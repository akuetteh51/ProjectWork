import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as fbAuth;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:vita_chek_v2/provider/auth_provider.dart';
import 'package:vita_chek_v2/views/auth_repos.dart';
import 'package:vita_chek_v2/views/homeLogin.dart';
import 'package:vita_chek_v2/views/login.dart';
import 'package:vita_chek_v2/views/signup.dart';
import 'package:vita_chek_v2/views/splash.dart';
import 'package:vita_chek_v2/views/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      // SignUp(),
      // LogIn(),
      // About(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return AnimatedSplashScreen(
        duration: 3000,
        splash: Container(
          child: Image.asset("images/VitaCheck.png"),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        nextScreen: MultiProvider(
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
            )
          ],
          child: PageView(
            controller: _controller,
            children: [
              Splash(),
              Home(),
              Welcome(),
            ],
          ),
        ),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white);
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("hello world"),
    );
  }
}
