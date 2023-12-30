import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:typhoonista/assets/themes/textStyles.dart';

class barChart extends StatelessWidget {
  barChart({super.key});

  final List<DamageCostBar> typhoons1 = [
    DamageCostBar("Anjing", 8874532),
    DamageCostBar("Delta", 2871283),
    DamageCostBar("Gamma", 3924534),
    DamageCostBar("Alpha", 6938472),
    DamageCostBar("Yolanda", 5392385),
    DamageCostBar("Agaton", 2112356),
    DamageCostBar("Ondoy", 7271945),
  ];

  @override
  Widget build(BuildContext context) {
    final sortedTyphoonCost = typhoons1.map((typhoon) => typhoon.damageCost).toList();
    sortedTyphoonCost.sort();
    return Container(
        child: BarChart(
          BarChartData(
          gridData: FlGridData(show: false),
            barGroups: typhoons1.map((typhoon) => BarChartGroupData(
                  x: typhoons1.indexOf(typhoon),
                  barRods: [
                    BarChartRodData(
                        toY: typhoon.damageCost+.0,
                        color: Colors.amber,
                        width: 30,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(8)))
                  ])).toList(),
            titlesData: FlTitlesData(
                topTitles:
                    AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                rightTitles:
                    AxisTitles(sideTitles: SideTitles(showTitles: false)),
                bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      reservedSize: 30,
                        showTitles: true,
                        getTitlesWidget: getTitlesWidget)
                        ),
                        ),
                
            borderData: FlBorderData(show: false), 
            maxY: (sortedTyphoonCost.last + 10000).round()+.0,
            minY: 0
            )
            ),
      );
  }

  Widget getTitlesWidget(double value, TitleMeta meta) {
    return SideTitleWidget(
        child: Text(
          typhoons1[value.toInt()].typhoonName,
          style: textStyles.lato_light(
            color: Colors.black,
          ),
        ),
        axisSide: meta.axisSide);
  }
}

class DamageCostBar{
  final String typhoonName;
  final int damageCost;

  DamageCostBar(this.typhoonName, this.damageCost);
}
