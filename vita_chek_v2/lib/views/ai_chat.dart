import 'package:flutter/material.dart';

import '../widgets/bottom_navigation..dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 3,
      ),
      body: Center(child: Text("Chat")),
    );
  }
}
