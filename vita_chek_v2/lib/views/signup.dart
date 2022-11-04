import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Stack(children: [
            Image.asset(
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                "images/auth.png"),
            SizedBox(height: 20),
            Positioned(
              left: MediaQuery.of(context).size.width / 5.5,
              child: Image.asset(
                "images/VitaCheck.png",
                width: 216,
                height: 30,
              ),
            ),
            SizedBox(height: 10),
            Positioned(
              left: 110,
              child: Image.asset(
                "images/logo1.png",
                width: 140,
                height: 180,
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Stack(
              children: [
                Positioned(
                  top: 230,
                  left: 140,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "SignUp",
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 5,
                          width: 23,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 350,
                  left: 80,
                  child: SingleChildScrollView(
                    child: Container(
                      height: 370,
                      width: 250,
                      child: Form(
                        child: ListView(children: [
                          TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Your Full name",
                              suffixIcon: Icon(Icons.person_outlined),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Email",
                              suffixIcon: Icon(Icons.mail),
                              labelStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Password",
                              suffixIcon: Icon(Icons.remove_red_eye),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            obscureText: true,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            width: 257,
                            height: 50,
                            child: TextButton(
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff3E64FF),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Already have an account ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "SignIn",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
