import 'package:flutter/material.dart';

class splashPage extends StatelessWidget {
  const splashPage({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
