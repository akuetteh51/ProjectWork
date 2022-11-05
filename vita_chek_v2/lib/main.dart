import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:vita_chek_v2/provider/auth/auth_state.dart';
import 'package:vita_chek_v2/provider/auth_provider.dart';
import 'package:vita_chek_v2/provider/sigin/signin_provider.dart';
import 'package:vita_chek_v2/views/auth_repos.dart';
import 'package:vita_chek_v2/views/dataSensor.dart';
import 'package:vita_chek_v2/views/homeLogin.dart';
import 'package:vita_chek_v2/views/login.dart';
import 'package:vita_chek_v2/views/splash.dart';
import 'package:vita_chek_v2/views/welcome.dart';

import 'provider/signup/signup_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(
    MultiProvider(
      providers: [
        Provider<AuthRepository>(
          create: (context) => AuthRepository(
            firebaseFirestore: FirebaseFirestore.instance,
            firebaseAuth: fbAuth.FirebaseAuth.instance,
          ),
        ),
        StreamProvider<fbAuth.User?>(
          create: (context) => context.read<AuthRepository>().user,
          initialData: null,
        ),
        ChangeNotifierProxyProvider<fbAuth.User?, AuthProvider>(
          create: (context) => AuthProvider(
            authRepository: context.read<AuthRepository>(),
          ),
          update: (BuildContext context, fbAuth.User? userStream,
                  AuthProvider? authProvider) =>
              authProvider!..update(userStream),
        ),
        ChangeNotifierProvider<SigninProvider>(
          create: (context) => SigninProvider(
            authRepository: context.read<AuthRepository>(),
          ),
        ),
        ChangeNotifierProvider<SignupProvider>(
          create: (context) => SignupProvider(
            authRepository: context.read<AuthRepository>(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            // SensorHome(),
            // signupPage(),
            MyApp(),
        // SignUp(),
        // LogIn(),
        // About(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final authState = context.watch<AuthProvider>().state;
    // if (authState.authStatus == AuthStatus.authenticated) {
    //   WidgetsBinding.instance!.addPersistentFrameCallback((timeStamp) {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => Welcome(),
    //         ));
    //   });
    // } else if (authState.authStatus == AuthStatus.unauthenticated) {
    //   WidgetsBinding.instance!.addPersistentFrameCallback((timeStamp) {
    //     Navigator.push(
    //         context,
    //         MaterialPageRoute(
    //           builder: (context) => LogIn(),
    //         ));
    //   });
    // }
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return start_screen();
  }
}

class start_screen extends StatelessWidget {
  start_screen({super.key});
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splash: Container(
          child: Image.asset("images/VitaCheck.png"),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        nextScreen: PageView(
          controller: _controller,
          children: [
            Splash(),
            Welcome(),
          ],
        ),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white);
  }
}
