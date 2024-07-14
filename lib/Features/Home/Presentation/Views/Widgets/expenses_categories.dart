import 'package:flutter/material.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Views/Widgets/expenses_categories_pie_chart.dart';
import 'customed_legends.dart';

class ExpensesCategories extends StatefulWidget
{
  const ExpensesCategories({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State
{
  @override
  Widget build(BuildContext context)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ExpensesCategoriesPieChart(),

        const CustomedLegends(),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.15),
      ],
    );
  }
}