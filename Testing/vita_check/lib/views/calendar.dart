import 'package:flutter/material.dart';

import 'package:vita_check/widgets/bottom_navigation..dart';

class calendar_screen extends StatelessWidget {
  const calendar_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 2,
      ),
      body: Center(child: Text("Calendar",),),
    );
  }
}
