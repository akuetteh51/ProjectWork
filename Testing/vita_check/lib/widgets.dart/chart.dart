import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SensorChart extends StatefulWidget {
  const SensorChart({Key? key}) : super(key: key);

  @override
  State<SensorChart> createState() => _SensorChartState();
}

class _SensorChartState extends State<SensorChart> {
  static List<Task> seriesPieData = [
    new Task('Temperature', 40.8, Color(0xff367ED6)),
    new Task('heart Beat', 36.8, Color(0xff8287ED)),
    new Task('Oxygen', 36.8, Color(0xff026FD9)),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Task, String>> _series = [
      charts.Series(
        data: seriesPieData,
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Body Vitals',
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
        areaColorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(Colors.white),
        patternColorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(Colors.white),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          color: Colors.transparent,
          child: charts.BarChart(_series),
        ),
      ),
    );
  }
}

class Task {
  String task;
  double taskvalue;
  Color colorval;
  Task(this.task, this.taskvalue, this.colorval);
}
