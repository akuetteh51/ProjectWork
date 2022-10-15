import 'package:flutter/material.dart';
import 'package:vita_chek_v2/views/calendar.dart';
import 'package:vita_chek_v2/views/dataSensor.dart';
import 'package:vita_chek_v2/views/doctor.dart';
import 'package:vita_chek_v2/views/homeLogin.dart';

import '../views/ai_chat.dart';

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
    Icons.chat,
    Icons.heart_broken_sharp,
  ];
  final _pages = [Home(), Doctor(), Calendar(), Chat(), SensorHome()];
  @override
  Widget build(BuildContext context) {
    print(widget.selectedIndex);
    return Padding(
      padding: const EdgeInsets.only(bottom: 30,left: 30,right: 30),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(25),
        color: Color(0xff3E64FF),
        child: Container(
          height: 52,
          width: double.infinity / 0.8,
          child: ListView.builder(
            itemCount: data.length,
            padding: EdgeInsets.symmetric(horizontal: 1),
            itemBuilder: (ctx, i) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
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
                            top: BorderSide(width: 5.0, color: Colors.white),
                          )
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
