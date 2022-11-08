import 'package:flutter/material.dart';

import '../widgets/bottom_navigation..dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white70,
        title: SizedBox(
          height: 52,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Schedule",
                style: TextStyle(
                    color: const Color(0xFF3E64FF),
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "appointment with your favorite\ndoctor.",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
            ],
          ),
        ),
        actions: [
          Image.asset("images/doc1.png"),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 1,
      ),
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 100,
              width: 493,
              color: Colors.white24,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                // width: 493,
                height: 233,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              left: -20,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0, bottom: 80),
                        child: Container(
                          width: 265,
                          height: 294,
                          child: Image.asset("images/doct3.png",
                              fit: BoxFit.contain, width: 265, height: 294),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text("Dr Jason Smith",
                                  style: TextStyle(
                                      color: const Color(0xFF3E64FF),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text("(Pediatrician) ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                children: [
                                  Icon(Icons.phone),
                                  Text(" +233 54 0000 000",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: const Color(0xFF3E64FF),
                                  ),
                                  width: 133,
                                  height: 30,
                                  child: Center(
                                    child: Text(
                                      "Book appointment",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
          Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF3E64FF),
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Stack(children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: Offset(3, 3),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  width: 191,
                  height: 35,
                  child: Center(
                    child: Text(
                      "Schedule for the Month",
                      style: TextStyle(
                        color: const Color(0xFF3E64FF),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Positioned(
                top: 65,
                left: 80,
                child: Container(
                  width: 180,
                  height: 15,
                  color: Color(0xFFB9DCFB),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 80,
                child: Container(
                  width: 180,
                  height: 165,
                  decoration: BoxDecoration(
                    color: Color(0xFFEFF7FF),
                  ),
                ),
              ),
              Positioned(
                top: 105,
                left: 105,
                child: Container(
                  width: 129,
                  height: 105,
                  color: Colors.redAccent,
                  child: Column(children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_sharp,
                            size: 10.0,
                          ),
                        ),
                        Text(
                          "October, 2022",
                          style: TextStyle(fontSize: 10),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10.0,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DoctorProfile()),
                            );
                          },
                          child: Container(
                              width: 30,
                              height: 20,
                              child: Center(
                                  child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 10.0,
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
                                fontSize: 10.0,
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
                                fontSize: 10.0,
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
                                fontSize: 10.0,
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
                                fontSize: 10.0,
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
                                fontSize: 10.0,
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
                                fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                                    fontSize: 10.0,
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
                  ]),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
