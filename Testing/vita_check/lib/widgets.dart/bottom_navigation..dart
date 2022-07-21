import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vita_check/views/aichat_screen.dart';
import 'package:vita_check/views/calendar.dart';
import 'package:vita_check/views/doctor_screen.dart';
import 'package:vita_check/views/sensor_data.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  List<IconData> data = [
    Icons.home,
    Icons.person,
    Icons.calendar_month,
    Icons.chat
  ];
  final _pages = [SensorData(), doctor(), calendar_screen(), aichat()];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(25),
        color: Color(0xff35A4B6),
        child: Container(
          height: 52,
          width: double.infinity,
          child: ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (ctx, i) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = i;
                  });
                  Get.to(() => _pages[i]);
                  print(i);
                },
                child: (AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  width: 60,
                  decoration: BoxDecoration(
                    border: i == selectedIndex
                        ? Border(
                            top: BorderSide(width: 5.0, color: Colors.white))
                        : null,
                    // color: i == selectedIndex ? Colors.white : null,
                  ),
                  child: Center(
                    child: Icon(
                      data[i],
                      size: 24,
                      color: i == selectedIndex
                          ? Colors.white
                          : Colors.grey.shade800,
                    ),
                  ),
                )),
              ),
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
