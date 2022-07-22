import 'package:flutter/material.dart';

import 'package:vita_check/views/aichat_screen.dart';
import 'package:vita_check/views/calendar.dart';
import 'package:vita_check/views/doctor_screen.dart';
import 'package:vita_check/views/sensor_data.dart';

class BottomNavigation extends StatefulWidget {
  final int selectedIndex;
  const BottomNavigation({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  List<IconData> data = [
    Icons.home,
    Icons.person,
    Icons.calendar_month,
    Icons.chat
  ];
  final _pages = [SensorData(), doctor(), calendar_screen(), aichat()];
  @override
  Widget build(BuildContext context) {
    print(widget.selectedIndex);
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
                  print(widget.selectedIndex);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: ((context) => _pages[i])),
                  );
                },
                child: (AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  width: 60,
                  decoration: BoxDecoration(
                    border: i == widget.selectedIndex
                        ? Border(
                            top: BorderSide(width: 5.0, color: Colors.white))
                        : null,
                    // color: i == selectedIndex ? Colors.white : null,
                  ),
                  child: Center(
                    child: Icon(
                      data[i],
                      size: 24,
                      color: i == widget.selectedIndex
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
