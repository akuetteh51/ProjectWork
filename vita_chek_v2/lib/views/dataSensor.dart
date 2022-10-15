import 'package:flutter/material.dart';

import '../widgets/bottom_navigation..dart';
import '../widgets/sensorData.dart';

class SensorHome extends StatelessWidget {
  const SensorHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 4,
      ),
      appBar: AppBar(
        leading: Column(
          children: [Expanded(child: Text("Good morning")), Text("Kwame")],
        ),
        actions: [
          Image.asset("images/doc1.png"),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Your Health data",
              style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFF3E64FF),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            SensorData(
              color: const Color(0xFF3E64FF),
              text: "Your temperature",
              dataIcon: "images/temperature.png",
              sensorData: "27.66°C",
              fontcolor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            SensorData(
              color: Colors.white,
              text: "Blood Pressure",
              dataIcon: "images/bloodpressure.png",
              sensorData: "120mmhg",
              fontcolor: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            SensorData(
              color: const Color(0xFF3E64FF),
              text: "Weight",
              dataIcon: "images/weight.png",
              sensorData: "50kg",
              fontcolor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            SensorData(
              color: Colors.white,
              text: "Height",
              dataIcon: "images/height.png",
              sensorData: "5’7 ft",
              fontcolor: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
