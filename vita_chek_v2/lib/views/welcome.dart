import 'package:flutter/material.dart';

import '../widgets/bottom_navigation..dart';
import 'about.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "welcome to",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff3E64FF),
                ),
              ),
              Image.asset("images/VitaCheck.png"),
              Image.asset("images/logo2.png"),
              Text(
                "What you want \n to do today ?",
                style: TextStyle(fontSize: 24),
              ),
              TextButton(
                  onPressed: () {},
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(24)),
                      height: 60,
                      width: 257,
                      child: Center(
                        child: Text(
                          "Check Vitals",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ))),
              Text(
                "OR",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff3E64FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(24)),
                  height: 60,
                  width: 257,
                  child: Center(
                    child: Text(
                      "Book appointment",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => About(),
                    ),
                  );
                },
                child: Text(
                  "Read more about us ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff3E64FF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
