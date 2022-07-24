import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vita_check/widgets.dart/bottom_navigation..dart';

class aichat extends StatelessWidget {
  const aichat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 3,
      ),
      body: Center(child: Text("chat")),
=======
      bottomNavigationBar: BottomNavigation(),
      body: Center(child: Text("chart")),
>>>>>>> 5111f286bd30a85e98efe367b47e7a2eff9c952b
    );
  }
}
