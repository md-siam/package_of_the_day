import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class MyDateFormat extends StatelessWidget {
  const MyDateFormat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    TextStyle textStyle = const TextStyle(fontSize: 16);

    String dateFormate1 = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]);
    String dateFormate2 = formatDate(DateTime.now(), [yy, '-', M, '-', d]);
    String timeFormate1 = formatDate(DateTime.now(), [HH, ':', nn, ':', ss]);
    String timeFormate2 = formatDate(DateTime.now(), [HH, ':', nn, ':', ss, z]);

    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Date Format')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('DateTime now: $now\n', style: textStyle),
            Text('Formate date: $dateFormate1', style: textStyle),
            Text('Formate date: $dateFormate2', style: textStyle),
            Text('Formate time: $timeFormate1', style: textStyle),
            Text('Formate time: $timeFormate2', style: textStyle),
          ],
        ),
      ),
    );
  }
}
