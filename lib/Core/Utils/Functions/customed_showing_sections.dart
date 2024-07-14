import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:personal_expense_tracker_app/Core/Utils/assets_data.dart';
import '../../../Features/Home/Data/Repositories/Models/transaction_model.dart';
import '../constant_colors.dart';
import 'number_of_categories.dart';

List<PieChartSectionData> showingSections({required int touchedIndex, required List<TransactionModel> allTransactions})
{
  return List.generate(AssetsData.categories.length, (i)
  {
    final isTouched = i == touchedIndex;
    final fontSize = isTouched ? 25.0 : 16.0;
    final radius = isTouched ? 60.0 : 50.0;
    const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
    int personalCareNumber = numberOfCategories(allTransactions: allTransactions).$1;
    int educationNumber = numberOfCategories(allTransactions: allTransactions).$2;
    int foodNumber = numberOfCategories(allTransactions: allTransactions).$3;
    int utilitiesNumber = numberOfCategories(allTransactions: allTransactions).$4;
    int numberOfTransactions = numberOfCategories(allTransactions: allTransactions).$5;

    switch (i)
    {
      case 0:
        return PieChartSectionData(
          color: red,
          value: ((personalCareNumber/numberOfTransactions) * 100).roundToDouble(),
          title: '${((personalCareNumber/numberOfTransactions) * 100).roundToDouble()}%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: white,
            shadows: shadows,
          ),
        );

      case 1:
        return PieChartSectionData(
          color: green,
          value: ((educationNumber/numberOfTransactions) * 100).roundToDouble(),
          title: '${((educationNumber/numberOfTransactions) * 100).roundToDouble()}%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: white,
            shadows: shadows,
          ),
        );

      case 2:
        return PieChartSectionData(
          color: white,
          value: ((foodNumber/numberOfTransactions) * 100).roundToDouble(),
          title: '${((foodNumber/numberOfTransactions) * 100).roundToDouble()}%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: black,
            shadows: shadows,
          ),
        );

      case 3:
        return PieChartSectionData(
          color: black,
          value: ((utilitiesNumber/numberOfTransactions) * 100).roundToDouble(),
          title: '${((utilitiesNumber/numberOfTransactions) * 100).roundToDouble()}%',
          radius: radius,
          titleStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: white,
            shadows: shadows,
          ),
        );

      default:
        throw Error();
    }
  });
}