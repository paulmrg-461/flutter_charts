import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: LineChart(
        LineChartData(
          gridData: const FlGridData(show: true),
          titlesData: FlTitlesData(
            // leftTitles: AxisTitles(
            //   sideTitles: SideTitles(showTitles: true),
            // ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  const style = TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  );
                  Widget text;
                  switch (value.toInt()) {
                    case 0:
                      text = const Text('Jan', style: style);
                      break;
                    case 1:
                      text = const Text('Feb', style: style);
                      break;
                    case 2:
                      text = const Text('Mar', style: style);
                      break;
                    case 3:
                      text = const Text('Apr', style: style);
                      break;
                    case 4:
                      text = const Text('May', style: style);
                      break;
                    case 5:
                      text = const Text('Jun', style: style);
                      break;
                    case 6:
                      text = const Text('Jul', style: style);
                      break;
                    case 7:
                      text = const Text('Aug', style: style);
                      break;
                    case 8:
                      text = const Text('Sep', style: style);
                      break;
                    case 9:
                      text = const Text('Oct', style: style);
                      break;
                    case 10:
                      text = const Text('Nov', style: style);
                      break;
                    case 11:
                      text = const Text('Dec', style: style);
                      break;
                    default:
                      text = const Text('', style: style);
                      break;
                  }
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: text,
                  );
                },
                interval: 1,
              ),
            ),
          ),
          borderData:
              FlBorderData(show: true, border: Border.all(color: Colors.black)),
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 100,
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 30),
                const FlSpot(1, 10),
                const FlSpot(2, 5),
                const FlSpot(3, 60),
                const FlSpot(4, 50),
                const FlSpot(5, 60),
                const FlSpot(6, 70),
                const FlSpot(7, 80),
                const FlSpot(8, 90),
                const FlSpot(9, 100),
                const FlSpot(10, 90),
                const FlSpot(11, 80),
              ],
              // isCurved: true,
              color: Colors.blue,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
            ),
            LineChartBarData(
              spots: [
                const FlSpot(0, 15),
                const FlSpot(1, 25),
                const FlSpot(2, 35),
                const FlSpot(3, 45),
                const FlSpot(4, 55),
                const FlSpot(5, 65),
                const FlSpot(6, 75),
                const FlSpot(7, 85),
                const FlSpot(8, 95),
                const FlSpot(9, 85),
                const FlSpot(10, 75),
                const FlSpot(11, 65),
              ],
              // isCurved: true,
              color: Colors.red,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
            ),
            LineChartBarData(
              spots: [
                const FlSpot(0, 20),
                const FlSpot(1, 30),
                const FlSpot(2, 40),
                const FlSpot(3, 50),
                const FlSpot(4, 60),
                const FlSpot(5, 70),
                const FlSpot(6, 80),
                const FlSpot(7, 90),
                const FlSpot(8, 80),
                const FlSpot(9, 70),
                const FlSpot(10, 60),
                const FlSpot(11, 50),
              ],
              // isCurved: true,
              color: Colors.green,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}
