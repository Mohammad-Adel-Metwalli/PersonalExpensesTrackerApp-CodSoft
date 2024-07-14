import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../Data/Repositories/Models/transaction_model.dart';

class DayTextAndIcon extends StatelessWidget
{
  const DayTextAndIcon({super.key, required this.transaction,});
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Icon(Icons.calendar_month_rounded, color: activeBlue, size: 30.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        Text('Day: ${transaction.day}', style: Styles.styleText22Black),
      ],
    );
  }
}