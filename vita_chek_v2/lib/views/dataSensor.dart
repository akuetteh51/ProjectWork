import 'package:flutter/material.dart';
import 'package:vita_chek_v2/widgets/Sensor_Data.dart';

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
            Sensor_data(
              color: const Color(0xFF3E64FF),
              text: "Your temperature",
              positionIcon: Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Image.asset("images/temperature.png"),
              ),
              // dataIcon: "images/temperature.png",
              sensorData: "27.66°C",
              fontcolor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Sensor_data(
              color: Colors.white,
              text: "Blood Pressure",
              sensorData: "120mmhg",
              positionIcon: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 50,
                  right: 30,
                ),
                child: Image.asset("images/bloodpressure.png"),
              ),
              // dataIcon: "images/bloodpressure.png",
              fontcolor: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Sensor_data(
              color: const Color(0xFF3E64FF),
              text: "Weight",
              positionIcon: Padding(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                child: Image.asset("images/weight.png"),
              ),
              // dataIcon: "images/weight.png",
              sensorData: "50 kg",
              fontcolor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Sensor_data(
              color: Colors.white,
              text: "Height",
              positionIcon: Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Image.asset("images/height.png"),
              ),
              // dataIcon: "images/height.png",
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
