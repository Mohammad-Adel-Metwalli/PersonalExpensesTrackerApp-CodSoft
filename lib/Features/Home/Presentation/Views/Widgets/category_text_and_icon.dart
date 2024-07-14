import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../Data/Repositories/Models/transaction_model.dart';

class CategoryTextAndIcon extends StatelessWidget
{
  const CategoryTextAndIcon({super.key, required this.transaction,});
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Icon(Icons.category_rounded, color: red, size: 30.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        Text('Category: ${transaction.category}', style: Styles.styleText22Black),
      ],
    );
  }
}