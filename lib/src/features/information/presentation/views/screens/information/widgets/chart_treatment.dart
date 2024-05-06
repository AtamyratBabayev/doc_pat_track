import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../../../shared/shared.dart';

const _barWidth = 3.0;
const _tooltipBorderRadius = 10.0;
const _height = 180.0;

class ChartTreatment extends StatelessWidget {
  const ChartTreatment({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final monthes = AppLocalizedMonthGenerator.getList(
        locale: Localizations.localeOf(context));
    return SizedBox(
      height: _height,
      child: LineChart(
        LineChartData(
            lineTouchData: LineTouchData(
              touchTooltipData: LineTouchTooltipData(
                tooltipRoundedRadius: _tooltipBorderRadius,
                getTooltipColor: (_) => theme.colorScheme.primary,
                getTooltipItems: (touchedSpots) {
                  return touchedSpots.map((touchedSpot) {
                    final textStyle = theme.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onPrimary,
                    );
                    return LineTooltipItem(
                      '${touchedSpot.y.toInt()}',
                      textStyle!,
                    );
                  }).toList();
                },
              ),
            ),
            titlesData: FlTitlesData(
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 30.0,
                    getTitlesWidget: (_, __) => const SizedBox()),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 20.0,
                    getTitlesWidget: (_, __) => const SizedBox()),
              ),
              bottomTitles: AxisTitles(
                axisNameSize: 20.0,
                sideTitles: SideTitles(
                    reservedSize: 30.0,
                    showTitles: true,
                    interval: 4.0,
                    getTitlesWidget: (value, _) {
                      return SideTitleWidget(
                        space: 10.0,
                        axisSide: AxisSide.bottom,
                        child: Text(
                          monthes[value.toInt()],
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorsExtension.onBackgroundSecondary,
                          ),
                        ),
                      );
                    }),
              ),
              leftTitles: AxisTitles(
                axisNameSize: 20.0,
                sideTitles: SideTitles(
                    reservedSize: 40.0,
                    showTitles: true,
                    interval: 1.0,
                    getTitlesWidget: (value, _) {
                      if (value == 0.0) {
                        return const SizedBox();
                      }
                      if (value % 2 == 1.0) {
                        return const SizedBox();
                      }
                      return SideTitleWidget(
                        space: 10.0,
                        axisSide: AxisSide.left,
                        child: Text(
                          '${value.toInt()}',
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorsExtension.onBackgroundSecondary,
                          ),
                        ),
                      );
                    }),
              ),
            ),
            minX: 0,
            minY: 0,
            maxX: 11,
            maxY: 6,
            gridData: const FlGridData(show: false),
            borderData: FlBorderData(
              show: false,
            ),
            lineBarsData: [
              LineChartBarData(
                  barWidth: _barWidth,
                  color: theme.colorScheme.primary,
                  isCurved: true,
                  dotData: const FlDotData(show: false),
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [
                          0.3,
                          1.0
                        ],
                        colors: [
                          theme.colorScheme.primary.withOpacity(0.4),
                          theme.colorScheme.background.withOpacity(0.3)
                        ]),
                  ),
                  spots: const [
                    FlSpot(0, 3),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 5),
                    FlSpot(6.0, 4),
                    FlSpot(8.0, 1),
                    FlSpot(9.0, 3),
                    FlSpot(10.1, 2),
                    FlSpot(11.0, 2.5),
                  ])
            ]),
      ),
    );
  }
}
