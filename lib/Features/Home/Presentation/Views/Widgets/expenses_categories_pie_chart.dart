import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Managers/All%20Transactions%20Cubit/all_transactions_cubit.dart';
import '../../../../../Core/Utils/Functions/customed_showing_sections.dart';
import '../../../Data/Repositories/Models/transaction_model.dart';

class ExpensesCategoriesPieChart extends StatefulWidget
{
  const ExpensesCategoriesPieChart({super.key});

  @override
  State<ExpensesCategoriesPieChart> createState() => _ExpensesCategoriesPieChartState();
}

class _ExpensesCategoriesPieChartState extends State<ExpensesCategoriesPieChart> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<AllTransactionsCubit, AllTransactionsState>(
      builder: (context, state)
      {
        BlocProvider.of<AllTransactionsCubit>(context).fetchAllTransactions();
        List<TransactionModel> allTransactions = BlocProvider.of<AllTransactionsCubit>(context).allTransactions;

        return Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse)
                  {
                    setState(()
                    {
                      if (!event.isInterestedForInteractions || pieTouchResponse == null || pieTouchResponse.touchedSection == null)
                      {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                    });
                  },
                ),
                sectionsSpace: 0,
                centerSpaceRadius: 40,
                sections: showingSections(touchedIndex: touchedIndex, allTransactions: allTransactions),
                borderData: FlBorderData(show: false),
              ),
            ),
          ),
        );
      },
    );
  }
}