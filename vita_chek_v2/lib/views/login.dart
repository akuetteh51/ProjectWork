import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
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
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Stack(
                      children: [
                        Image.asset(
                          fit: BoxFit.fill,
                          "images/login.png",
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height / 1.4,
                        ),
                        Positioned(
                          top: 50,
                          left: 120,
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 36,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 120,
                          left: 80,
                          child: Column(
                            children: [
                              Container(
                                height: 270,
                                width: 250,
                                child: Column(children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      fillColor: Colors.white,
                                      filled: true,
                                      labelText: "Email",
                                      suffixIcon: Icon(Icons.mail),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      fillColor: Colors.white,
                                      filled: true,
                                      labelText: "Password",
                                      suffixIcon: Icon(Icons.remove_red_eye),
                                    ),
                                    obscureText: true,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Forgot Password ?",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ]),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                width: 257,
                                height: 60,
                                child: TextButton(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Don’t have an account? SignUp",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
