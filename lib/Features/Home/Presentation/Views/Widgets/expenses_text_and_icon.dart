import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_expense_tracker_app/Core/Utils/styles.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Repositories/Models/transaction_model.dart';

class ExpensesTextAndIcon extends StatelessWidget
{
  const ExpensesTextAndIcon({super.key, required this.transaction,});
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Icon(CupertinoIcons.money_pound_circle_fill, color: green, size: 30.h),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        Text('Amount: ${transaction.amount} EGP', style: Styles.styleText22Black),
      ],
    );
  }
}