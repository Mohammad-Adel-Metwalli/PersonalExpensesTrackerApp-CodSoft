import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_expense_tracker_app/Features/Home/Data/Repositories/Models/transaction_model.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Managers/All%20Transactions%20Cubit/all_transactions_cubit.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Views/Widgets/expenses_categories.dart';
import 'expenses_categories_text_and_icon.dart';
import 'expenses_per_month.dart';
import 'expenses_per_month_text_and_icon.dart';

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<AllTransactionsCubit, AllTransactionsState>(
      builder: (context, state)
      {
        List<TransactionModel> allTransactions = BlocProvider.of<AllTransactionsCubit>(context).allTransactions;

        return SingleChildScrollView(
          padding: EdgeInsets.only(top: 110.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              const ExpensesPerMonthTextAndIcon(),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpensesPerMonth(allTransactions: allTransactions),
              ),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

              const ExpensesCategoriesTextAndIcon(),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

              const ExpensesCategories(),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
            ],
          ),
        );
      },
    );
  }
}