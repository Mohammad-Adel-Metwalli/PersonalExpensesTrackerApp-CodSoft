import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class AddTransactionButtonBody extends StatelessWidget
{
  const AddTransactionButtonBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.add_card_rounded, color: white, size: 30.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Text('Add Transaction', style: Styles.styleText20White),
      ],
    );
  }
}