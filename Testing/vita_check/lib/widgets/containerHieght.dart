import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class Height extends StatefulWidget {
  const Height({Key? key}) : super(key: key);

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff35A4B6),
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 30),
            child: Text(
              "Good Morning,Michael",
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Height:",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Icon(
                Icons.height,
                size: 35,
              ),
              Text(
                "6.5 Feet",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
