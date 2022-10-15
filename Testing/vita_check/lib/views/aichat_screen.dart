import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vita_check/widgets.dart/bottom_navigation..dart';

class AiChat extends StatelessWidget {
  const AiChat({Key? key}) : super(key: key);

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
