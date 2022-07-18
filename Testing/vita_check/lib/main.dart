import 'package:flutter/material.dart';
import 'package:vita_check/views/sensor_data.dart';
import 'package:vita_check/views/splash.dart';
import 'package:vita_check/widgets.dart/chart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Splash_screen(),
      home: SensorData(),
      // home: Scaffold(backgroundColor: Colors.white, body: SensorChart()),
    ),
  );
}
