// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
//
// class chart extends StatelessWidget {
//   const chart({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// body: Column(
//   children: [
//         SfCartesianChart(
//
//       title: ChartTitle(text: 'Sales analysis'),
//
//       legend: Legend(isVisible: true),
//
//       series: <ChartSeries>[
//
//         LineSeries<SalesData, num>(
//
//           dataSource: [
//
//             SalesData(2000, 100),
//
//             SalesData(2001, 200),
//
//             SalesData(2002, 150),
//
//             SalesData(2003, 300),
//
//             SalesData(2004, 200),
//
//           ],
//
//           xValueMapper: (SalesData sales, _) => sales.month,
//
//           yValueMapper: (SalesData sales, _) => sales.sales,
//
//           name: 'Sales',
//
//         ),
//
//       ],
//
//       primaryXAxis: NumericAxis(axisLine: AxisLine(color: Colors.amber),
//
//         edgeLabelPlacement: EdgeLabelPlacement.shift,
//
//        // title: AxisTitle(text: 'Year'),
//
//       ),
//
//       primaryYAxis: NumericAxis(axisLine: AxisLine(color: Colors.red),
//
//         edgeLabelPlacement: EdgeLabelPlacement.shift,
//
//       //  title: AxisTitle(text: 'Sales'),
//
//       ),
//
//     ),
//
//
//
//
//
//
//
//
//
//     Container(
//     height: 300,
//     decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(15),
//     boxShadow: [BoxShadow(color:Colors.grey.withOpacity(0.3), blurRadius: 3)],
//     ),
//     child: SfCartesianChart(
//     margin: EdgeInsets.only(top: 4, left: 4, right: 4, bottom: 2),
//     primaryXAxis: CategoryAxis(
//     majorGridLines: const MajorGridLines(width: 0),
//     axisLine: const AxisLine(
//     width: 0,
//     ),
//     majorTickLines: const MajorTickLines(size: 0, width: 0),
//     labelStyle: TextStyle(fontSize: 9, color: Colors.blueGrey, fontWeight: FontWeight.w300),
//     ),
//     primaryYAxis: NumericAxis(
//     majorGridLines: const MajorGridLines(width: 0),
//     axisLine: const AxisLine(
//     width: 0,
//     ),
//     majorTickLines: const MajorTickLines(size: 0, width: 0),
//     labelStyle: TextStyle(fontSize: 9, color: ColorRes.lightGrayColor, fontWeight: FontWeight.w300),
//     ),
//     plotAreaBorderWidth: 0,
//     series: <ChartSeries<ChartData, int>>[
//     ColumnSeries<ChartData, int>(
//     dataSource: chartData,
//     xValueMapper: (ChartData data, _) => data.x,
//     yValueMapper: (ChartData data, _) => data.y,
//     // Width of the columns
//
//     width: 0.2,
//     gradient: LinearGradient(
//     colors: [
//     ColorRes.blueColor,
//     ColorRes.blueColor.withOpacity(0.4),
//     ],
//     begin: Alignment.topCenter,
//     end: Alignment.bottomCenter,
//     ),
//   ],
// ),
//
//
//     );
//   }
// }
//
// class SalesData {
//   final double month;
//   final double sales;
//
//   SalesData(this.month, this.sales);
//
// }
