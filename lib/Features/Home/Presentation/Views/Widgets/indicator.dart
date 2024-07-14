import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Indicator extends StatelessWidget
{
  const Indicator({super.key, required this.color, required this.text, required this.isSquare, this.size = 16, this.textColor,});
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Container(
          width: size.w,
          height: size.h,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),

        SizedBox(width: 4.w),

        Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor)),
      ],
    );
  }
}