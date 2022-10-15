import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vita_chek_v2/views/about.dart';
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
        nextScreen: PageView(
          controller: _controller,
          children: [
            Splash(),
            Home(),
            Welcome(),
          ],
        ),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white);
  }
}
