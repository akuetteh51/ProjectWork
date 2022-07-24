import 'package:flutter/material.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/splash.png",
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}

