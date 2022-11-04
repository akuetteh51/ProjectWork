import 'package:flutter/material.dart';
import 'package:vita_chek_v2/views/doctor_prof.dart';

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
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(80.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "October,2022",
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3E64FF),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (_) => DoctorProfile(),
                              //       ),
                              // );
                            },
                            child: Container(
                                width: 30,
                                height: 20,
                                child: Center(
                                    child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff3E64FF),
                                  ),
                                ))),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                              width: 30,
                              height: 20,
                              child: Center(
                                  child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3E64FF),
                                ),
                              ))),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                              width: 30,
                              height: 20,
                              child: Center(
                                  child: Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3E64FF),
                                ),
                              ))),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                              width: 30,
                              height: 20,
                              child: Center(
                                  child: Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3E64FF),
                                ),
                              ))),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                              width: 30,
                              height: 20,
                              child: Center(
                                  child: Text(
                                "5",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3E64FF),
                                ),
                              ))),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                              width: 30,
                              height: 20,
                              child: Center(
                                  child: Text(
                                "6",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3E64FF),
                                ),
                              ))),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                              width: 30,
                              height: 20,
                              child: Center(
                                  child: Text(
                                "7",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff3E64FF),
                                ),
                              ))),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 20,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "8",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                  width: 20,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "9",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 30,
                                height: 20,
                                child: Center(
                                  child: Text(
                                    "10",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "11",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "12",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "13",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "14",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 4,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "15",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "16",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "17",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "18",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "19",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "20",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "21",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "22",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "23",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "24",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "25",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "26",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "27",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "28",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "29",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "30",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                  width: 30,
                                  height: 20,
                                  child: Center(
                                      child: Text(
                                    "31",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3E64FF),
                                    ),
                                  ))),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
