import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vita_check/widgets.dart/bottom_navigation..dart';

class calendar_screen extends StatelessWidget {
  const calendar_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 2,
      ),
=======
      bottomNavigationBar: BottomNavigation(),
>>>>>>> 5111f286bd30a85e98efe367b47e7a2eff9c952b
      body: Center(child: Text("Calendar")),
    );
  }
}
