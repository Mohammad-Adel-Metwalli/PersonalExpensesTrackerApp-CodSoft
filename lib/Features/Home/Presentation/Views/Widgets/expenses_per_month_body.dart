import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_expense_tracker_app/Core/Utils/styles.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Repositories/Models/transaction_model.dart';
import 'category_text_and_icon.dart';
import 'day_text_and_icon.dart';
import 'expenses_text_and_icon.dart';

class ExpensesPerMonthBody extends StatelessWidget
{
  const ExpensesPerMonthBody({super.key, required this.index, required this.allTransactions,});
  final List<TransactionModel> allTransactions;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: 350.w,
      child: Card(
        color: white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25), side: const BorderSide(color: orange, width: 4.5)),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

              Text(allTransactions[index].title, style: Styles.styleText25Black),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

              ExpensesTextAndIcon(transaction: allTransactions[index]),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              DayTextAndIcon(transaction: allTransactions[index]),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              CategoryTextAndIcon(transaction: allTransactions[index]),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              Text(allTransactions[index].date, style: Styles.styleText18Black),
            ],
          ),
        ),
      ),
    );
  }
}