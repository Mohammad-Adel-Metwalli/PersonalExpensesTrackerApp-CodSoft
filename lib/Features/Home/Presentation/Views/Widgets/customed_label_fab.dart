import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomedLabelFAB extends StatelessWidget
{
  const CustomedLabelFAB({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add_card_rounded, color: white, size: 25.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Text('Transaction', style: TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 16.sp)),
      ],
    );
  }
}