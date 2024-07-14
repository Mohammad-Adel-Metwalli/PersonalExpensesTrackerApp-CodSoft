import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ExpensesCategoriesTextAndIcon extends StatelessWidget
{
  const ExpensesCategoriesTextAndIcon({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.035),

        Icon(Icons.pie_chart_sharp, size: 30.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Text('Expenses Categories', style: TextStyle(color: white, fontSize: 22.sp, fontWeight: FontWeight.bold)),
      ],
    );
  }
}