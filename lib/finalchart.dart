import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class ChartData {
  ChartData(
      this.x,
      this.y,
      );

  final String x;
  final double y;
}
class FinalChart extends StatelessWidget {
  final List<ChartData> chartData = [
    ChartData("1M", 20),
    ChartData("3M", 50),
    ChartData("5M", 40),
    ChartData("6M", 50),
    ChartData("1Y", 75),
    ChartData("2Y", 30),
    ChartData("3Y", 25),

  ];
  FinalChart ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color:Colors.grey.withOpacity(0.3), blurRadius: 3)],
        ),
        child: SfCartesianChart(
          margin: EdgeInsets.only(top: 4, left: 4, right: 4, bottom: 2),
          primaryXAxis: CategoryAxis(
            majorGridLines: const MajorGridLines(width: 0),
            axisLine: const AxisLine(
              width: 0,
            ),
            majorTickLines: const MajorTickLines(size: 0, width: 0),
            labelStyle: TextStyle(fontSize: 9, color: Colors.blueGrey, fontWeight: FontWeight.w300),
          ),
          primaryYAxis: NumericAxis(
            majorGridLines: const MajorGridLines(width: 0),
            axisLine: const AxisLine(
              width: 0,
            ),
            majorTickLines: const MajorTickLines(size: 0, width: 0),
            labelStyle: TextStyle(fontSize: 9, color:  Colors.blueGrey, fontWeight: FontWeight.w300),
          ),
          plotAreaBorderWidth: 0,
          series: <SplineSeries<ChartData, String>>[
            SplineSeries<ChartData, String>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
              width: 10,
              color: Colors.orange,


            ),
          ],

        ),

      ),
    );
  }
}
class SalesData {
  final double month;
  final double sales;

  SalesData(this.month, this.sales);

}

