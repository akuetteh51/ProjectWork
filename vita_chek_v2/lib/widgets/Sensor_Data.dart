import 'package:flutter/material.dart';

class Sensor_data extends StatelessWidget {
  final Padding positionIcon;
  final String text;
  // final String dataIcon;
  final String sensorData;
  final Color color;
  final Color fontcolor;
  const Sensor_data(
      {super.key,
      required this.text,
      // required this.dataIcon,
      required this.sensorData,
      required this.color,
      required this.fontcolor,
      required this.positionIcon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(43),
          color: color,
        ),
        width: MediaQuery.of(context).size.width / 1.4,
        height: 197,
        child: Stack(children: [
          Positioned(
            top: 40,
            left: 10,
            child: Container(
              width: 190,
              height: 140,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: fontcolor),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Text(
                        sensorData,
                        style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            color: fontcolor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: positionIcon,
            // child: Padding(
            //   padding: const EdgeInsets.only(top: 30, left: 30),
            //   child: Image.asset(dataIcon),
          )
        ]),
      ),
    );
  }
}
