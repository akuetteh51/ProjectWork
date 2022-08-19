import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vita_check/views/login.dart';

import 'package:vita_check/views/sensor_data.dart';
import 'package:vita_check/views/splash.dart';
import 'package:vita_check/widgets/chart.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Splash_screen(),
        home: MyApp()
        // home: Scaffold(backgroundColor: Colors.white, body: SensorChart()),
        ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Container(
        
        child: AnimatedSplashScreen(
                splash: "assets/VitaCheck.png",
          centered: true,
          duration: 1000,
          splashIconSize: 500,
              
              nextScreen: Login(),
              splashTransition: SplashTransition.fadeTransition,
              
           backgroundColor:Color(0xff35A4B6),
          
          ),
      )
    );
  }
}
