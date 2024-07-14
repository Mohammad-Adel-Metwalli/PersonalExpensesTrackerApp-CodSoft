import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant_colors.dart';

BarChartGroupData makeGroupData(int x, double y1)
{
  return BarChartGroupData(
    barsSpace: 4,
    x: x,
    barRods: [
      BarChartRodData(
        toY: y1,
        color: amber,
        width: 10.w,
      ),
    ],
    showingTooltipIndicators: [
      y1.toInt(),
    ],
  );
}