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
class percentagechart extends StatelessWidget {
  final List<ChartData> chartData = [
    ChartData("1M", 0),
    ChartData("3M", 50),
    ChartData("5M", 40),
    ChartData("6M", 50),
    ChartData("1Y", 75),
    ChartData("2Y", 30),
    ChartData("3Y", 25),
  ];
   percentagechart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        Container(color: Colors.grey,
          height: 600,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(
              majorGridLines: const MajorGridLines(width: 0),
              axisLine:
              const AxisLine(width: 1, color:  Colors.white),
              majorTickLines: const MajorTickLines(size: 0, width: 0),
              labelStyle: TextStyle(
                  fontSize: 8,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            primaryYAxis: NumericAxis(
              majorGridLines: const MajorGridLines(width: 0),
              axisLine: const AxisLine(
                width: 1,
                color:  Colors.white,

              ),
              majorTickLines: const MajorTickLines(size: 0, width: 0),labelFormat: ("{value}%"),labelRotation: 25 ,
            //  rangePadding: ChartRangePadding.auto,
              labelStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
            plotAreaBorderWidth: 0,
            series: <SplineSeries<ChartData, String>>[
              SplineSeries<ChartData, String>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                width: 3,
                color: Colors.orange,
              ),
            ],
          ),
        ),

      ],
    );
  }
}
