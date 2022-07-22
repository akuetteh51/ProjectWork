import 'package:flutter/material.dart';
import 'package:vita_check/widgets.dart/bottom_navigation..dart';
import 'package:vita_check/widgets.dart/chart.dart';
import 'package:vita_check/widgets.dart/sensorData.dart';

import 'package:vita_check/widgets.dart/containerHieght.dart';

class SensorData extends StatelessWidget {
  const SensorData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D3A35),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Height(),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Data",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DataSens(
                    data: "30",
                    datatype: "c",
                    icon: Icon(
                      Icons.thermostat,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  DataSens(
                    data: "45",
                    datatype: "bmp",
                    icon: Icon(
                      Icons.heart_broken_sharp,
                      color: Colors.black,
                      size: 35,
                    ),
                  ),
                  DataSens(
                    data: "80",
                    datatype: "%",
                    icon: Icon(
                      Icons.monitor_heart_sharp,
                      color: Colors.black,
                      size: 35,
                    ),
                  )
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Graph",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SensorChart(),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomNavigation(
              selectedIndex: 0,
            ))
      ]),
    );
  }
}
