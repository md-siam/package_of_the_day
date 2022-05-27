import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BidData {
  BidData(this.time, this.num);
  final String time;
  final int num;
}

class AmountData {
  AmountData(this.time, this.value);
  final String time;
  final int value;
}

class RunningBidsChart extends StatelessWidget {
  const RunningBidsChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: "Running Bids"),
      primaryXAxis: CategoryAxis(
        labelRotation: 90,
      ),
      series: <ChartSeries>[
        LineSeries<BidData, String>(
          color: Colors.blue,
          dataSource: [
            // Bind data source
            BidData('11:15', 2),
            BidData('12:15', 3),
            BidData('13:20', 7),
            BidData('14:12', 8),
            BidData('14:42', 12),
            BidData('15:00', 10),
            BidData('15:12', 11),
            BidData('16:12', 15),
            BidData('16:40', 15)
          ],
          xValueMapper: (BidData sales, _) => sales.time,
          yValueMapper: (BidData sales, _) => sales.num,
        ),
      ],
    );
  }
}

class CompletedBidsChart extends StatelessWidget {
  const CompletedBidsChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: "Completed Bids"),
      primaryXAxis: CategoryAxis(
        labelRotation: 90,
      ),
      series: <ChartSeries>[
        LineSeries<BidData, String>(
          color: Colors.pink,
          dataSource: [
            // Bind data source
            BidData('11:15', 0),
            BidData('12:15', 1),
            BidData('13:20', 2),
            BidData('14:12', 4),
            BidData('14:42', 5),
            BidData('15:00', 6),
            BidData('15:12', 6),
            BidData('16:12', 8),
            BidData('16:40', 9)
          ],
          xValueMapper: (BidData sales, _) => sales.time,
          yValueMapper: (BidData sales, _) => sales.num,
        ),
      ],
    );
  }
}

class TotalAmountChart extends StatelessWidget {
  const TotalAmountChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: "Total Amount (BDT)"),
      primaryXAxis: CategoryAxis(
        labelRotation: 90,
      ),
      series: <ChartSeries>[
        LineSeries<AmountData, String>(
          color: Colors.green,
          dataSource: [
            // Bind data source
            AmountData('11:15', 0),
            AmountData('12:15', 10000),
            AmountData('13:20', 10323),
            AmountData('14:12', 20132),
            AmountData('14:42', 33421),
            AmountData('15:00', 34542),
            AmountData('15:12', 40192),
            AmountData('16:12', 49123),
            AmountData('16:40', 50230)
          ],
          xValueMapper: (AmountData sales, _) => sales.time,
          yValueMapper: (AmountData sales, _) => sales.value,
        ),
      ],
    );
  }
}
