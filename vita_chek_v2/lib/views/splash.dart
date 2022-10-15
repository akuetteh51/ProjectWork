import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "images/VitaCheck.png",
                width: 216,
                height: 19,
              ),
              Image.asset(
                "images/logo3.png",
                width: 241,
                height: 256,
              ),
              Image.asset(
                "images/splash.png",

                //
                width: 269,
                height: 269,
              ),
              Image.asset(
                "images/add.png",
                width: 27,
                height: 39,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sign in",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "OR",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Create account",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
