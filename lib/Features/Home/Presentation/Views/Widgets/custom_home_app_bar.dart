import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import 'custom_home_app_bar_body.dart';

class CustomHomeAppBar extends StatelessWidget
{
  const CustomHomeAppBar({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: teaGreen,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),

      child: const CustomHomeAppBarBody(),
    );
  }
}