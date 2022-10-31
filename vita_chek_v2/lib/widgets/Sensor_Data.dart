import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:vita_chek_v2/views/graph.dart';

class Sensor_data extends StatelessWidget {
  final Padding positionIcon;
  final String text;
  final double sized_height;

  // final String dataIcon;
  final Color outlineColor;
  final String sensorData;
  final Color color;
  final Color fontcolor;
  const Sensor_data(
      {super.key,
      required this.text,
      required this.sensorData,
      this.sized_height = 8,
      required this.color,
      required this.fontcolor,
      required this.outlineColor,
      required this.positionIcon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => Graph()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(43),
            color: color,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
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
                // color: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      OutlinedText(
                          text: Text(
                            text,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: fontcolor,
                            ),
                          ),
                          strokes: [
                            OutlinedTextStroke(color: outlineColor, width: 3),
                          ]),
                      SizedBox(
                        height: sized_height,
                      ),
                      Expanded(
                        child: OutlinedText(
                            text: Text(
                              sensorData,
                              style: TextStyle(
                                fontSize: 36.0,
                                fontWeight: FontWeight.bold,
                                color: fontcolor,
                              ),
                            ),
                            strokes: [
                              OutlinedTextStroke(color: outlineColor, width: 3),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: positionIcon,
            )
          ]),
        ),
      ),
    );
  }
}
