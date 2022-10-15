import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vita_chek_v2/google_icon_icons.dart';
import 'package:vita_chek_v2/views/login.dart';
import 'package:vita_chek_v2/views/signup.dart';

import '../widgets/bottom_navigation..dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // SizedBox(height: 10),
              Text(
                "Welcome to",
                style: TextStyle(
                    color: Color(0xff3E64FF),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              Image.asset(
                "images/VitaCheck.png",
                width: 216,
                height: 30,
              ),
              SizedBox(height: 10),
              Image.asset(
                "images/logo1.png",
                width: 140,
                height: 180,
              ),
              SizedBox(height: 40),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: 257,
                  height: 60,
                  color: Color(0xff3E64FF),
                  child: TextButton(
                    onPressed: (() => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => SignUp()),
                        )),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {},
                child: Container(
                  width: 257,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      border: Border.all(
                        color: Colors.black45,
                        width: 2,
                      )),
                  child: Center(
                    child: TextButton(
                      onPressed: (() => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (_) => LogIn()),
                          )),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Color(0xff3E64FF),
                            fontSize: 24,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              IconButton(
                onPressed: () {},
                icon: Image.asset("images/google2.png"),
              ),
              SizedBox(height: 25),
              Text("Login using your Google account"),
            ],
          ),
        ),
      ),
    );
  }
}
