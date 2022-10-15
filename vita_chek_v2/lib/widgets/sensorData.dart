import 'package:flutter/material.dart';

class SensorData extends StatelessWidget {
  final String text;
  final String dataIcon;
  final String sensorData;
  final Color color;
  final Color fontcolor;

  const SensorData(
      {Key? key,
      required this.text,
      required this.dataIcon,
      required this.sensorData,
      required this.color,
      required this.fontcolor})
      : super(key: key);
// M1i2C3H4a@E!l#
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.4,
          height: 167,
          child: Card(
            shadowColor: color.withOpacity(1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(43.0),
            ),
            color: color,
            child: Expanded(
              child: Positioned(
                top: 20,
                left: 20,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Stack(children: [
                        Positioned(
                          top: 30,
                          right: 10,
                          height: 100,
                          width: 590,
                          child: Container(
                            width: 330,
                            height: 90,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 50.0, left: 8.0),
                                  child: Expanded(
                                    child: Text(
                                      overflow: TextOverflow.clip,
                                      text,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: fontcolor),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 5.0, right: 0, left: 20.0),
                                    child: Expanded(
                                      child: Text(
                                        sensorData,
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold,
                                            color: fontcolor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Positioned(
                      height: 40,
                      left: 25,
                      child: Expanded(
                        child: Image.asset(dataIcon),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
