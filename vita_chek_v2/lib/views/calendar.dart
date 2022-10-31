import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/bottom_navigation..dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/doctor2.png",
              ),
            )
          ],
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,

          // leading: Expanded(
          //   child: Row(children: [
          //     Expanded(
          //       child: Text(
          //         "Schedule",
          //         style: TextStyle(
          //           color: Color(0xff3E64FF),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //         child: Text(
          //       "appointment with your favorite \n doctor.",
          //       style: TextStyle(
          //         color: Colors.black,
          //       ),
          //     ))
          //   ]),
          // ),
          title: Expanded(
              child: Image.asset(
            "images/VitaCheck.png",
            width: 216,
            height: 19,
          )),
        ),
        bottomNavigationBar: BottomNavigation(
          selectedIndex: 2,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]),
                width: 247,
                height: 47,
                child: TextButton(
                  child: Text("CALENDAR"),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ));
  }
}
