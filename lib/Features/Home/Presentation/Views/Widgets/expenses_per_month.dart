import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Data/Repositories/Models/transaction_model.dart';
import 'expenses_per_month_body.dart';

class ExpensesPerMonth extends StatelessWidget
{
  const ExpensesPerMonth({super.key, required this.allTransactions,});
  final List<TransactionModel> allTransactions;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 270.h,
      width: double.infinity,

      child: ListView.builder(
        itemCount: allTransactions.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ExpensesPerMonthBody(index: index, allTransactions: allTransactions),
      ),
    );
  }
}