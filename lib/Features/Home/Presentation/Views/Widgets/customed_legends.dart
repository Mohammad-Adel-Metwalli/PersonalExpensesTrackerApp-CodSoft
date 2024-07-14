import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'indicator.dart';

class CustomedLegends extends StatelessWidget
{
  const CustomedLegends({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Indicator(color: red, text: 'Personal Care', isSquare: true, textColor: white),

        SizedBox(height: 4.h),

        const Indicator(color: green, text: 'Education', isSquare: true, textColor: white),

        SizedBox(height: 4.h),

        const Indicator(color: white, text: 'Food', isSquare: true, textColor: white),

        SizedBox(height: 4.h),

        const Indicator(color: black, text: 'Utilities', isSquare: true, textColor: white),

        SizedBox(height: 4.h),
      ],
    );
  }
}