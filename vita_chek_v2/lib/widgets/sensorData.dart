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
          child: Expanded(
            child: Card(
              shadowColor: color.withOpacity(1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(43.0),
              ),
              color: color,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Container(
                        width: 450,
                        height: 90,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Text(
                                text,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: fontcolor),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                sensorData,
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                    color: fontcolor),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      dataIcon,
                      height: 75,
                      width: 85,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
