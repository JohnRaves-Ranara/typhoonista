import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:typhoonista/assets/themes/textStyles.dart';
import 'package:uuid/uuid.dart';

class test extends StatelessWidget {
  test({super.key});

  final List<ChartData> damageCosts = [
    ChartData("Yolanda", 8736492, Uuid().toString()),
    ChartData("Makora", 3872645, Uuid().toString()),
    ChartData("Megumi", 2902734, Uuid().toString()),
    ChartData("What", 2837567, Uuid().toString()),
    ChartData("dsdas", 2837567, Uuid().toString()),
    ChartData("zz", 898423, Uuid().toString()),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 800,
          color: Colors.red.shade100,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(
              labelStyle: textStyles.lato_regular(),
            ),
            primaryYAxis: NumericAxis(
              labelStyle: textStyles.lato_regular(),
            ),
            series:[
              StackedColumnSeries <ChartData, String>(
                dataSource: damageCosts,
                xValueMapper: (ChartData ch, _) => ch.title,
                yValueMapper: (ChartData ch, _) => ch.cost
                )
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  final String title;
  final int cost;
  final String id;

  ChartData(this.title, this.cost, this.id);
}
