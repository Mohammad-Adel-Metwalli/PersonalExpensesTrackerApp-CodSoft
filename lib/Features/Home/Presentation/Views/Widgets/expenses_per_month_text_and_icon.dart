import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class ExpensesPerMonthTextAndIcon extends StatelessWidget
{
  const ExpensesPerMonthTextAndIcon({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.035),

        Icon(CupertinoIcons.doc_chart, size: 30.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Text('All Expenses', style: TextStyle(color: white, fontSize: 22.sp, fontWeight: FontWeight.bold)),
      ],
    );
  }
}