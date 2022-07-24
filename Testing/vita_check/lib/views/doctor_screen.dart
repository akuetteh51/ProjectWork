import 'package:flutter/material.dart';

import 'package:vita_check/widgets.dart/bottom_navigation..dart';

class doctor extends StatelessWidget {
  const doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(),
      body: Center(child: Text("doctor screen")),
    );
  }
}
