import 'package:flutter/material.dart';

class DataSens extends StatefulWidget {
  final String data;
  final String datatype;

  final Icon icon;
  const DataSens(
      {Key? key,
      required this.data,
      required this.datatype,
      required this.icon})
      : super(key: key);

  @override
  State<DataSens> createState() => _DataSensState();
}

class _DataSensState extends State<DataSens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        color: Color(0xffD9D9D9),
      ),
      height: 187,
      width: 74,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CircleAvatar(
              radius: 30,
              child: widget.icon,
              backgroundColor: Color(0xff8C9391),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.data,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          Text(
            widget.datatype,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
