import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomDivider extends StatelessWidget
{
  const CustomDivider({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 10.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: teaGreen,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}