import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'model.dart';

class MySyncfusionFlutterCharts extends StatefulWidget {
  const MySyncfusionFlutterCharts({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MySyncfusionFlutterChartsState createState() =>
      _MySyncfusionFlutterChartsState();
}

class _MySyncfusionFlutterChartsState extends State<MySyncfusionFlutterCharts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Syncfusion Flutter Charts')),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildContainer(5, "running\nbids", Colors.blue),
                buildContainer(54, "completed\nbids", Colors.pink),
                buildContainer(50230, "total amount\n(in BDT)", Colors.green),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: const RunningBidsChart(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: const CompletedBidsChart(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: const TotalAmountChart(),
            ),
          ),
        ],
      ),
    );
  }

  Container buildContainer(int num, String type, Color color) {
    final oCcy = NumberFormat("#,##0", "en_US");
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 7,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            oCcy.format(num),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            type.toUpperCase(),
            style: const TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
