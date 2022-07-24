import 'package:flutter/material.dart';
import 'package:vita_check/widgets.dart/bottom_navigation..dart';

class aichat extends StatelessWidget {
  const aichat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 3,
      ),
      body: Center(child: Text("chat")),
    );
  }
}
