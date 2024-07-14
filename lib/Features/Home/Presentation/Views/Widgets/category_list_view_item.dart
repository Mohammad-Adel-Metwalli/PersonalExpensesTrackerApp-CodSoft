import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_expense_tracker_app/Core/Utils/constant_colors.dart';
import 'package:personal_expense_tracker_app/Core/Utils/styles.dart';

class CategoryListViewItem extends StatelessWidget
{
  const CategoryListViewItem({super.key, required this.index, required this.categoriesList, required this.chosenIndex,});
  final List<String> categoriesList;
  final int index, chosenIndex;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width: 150.w,
      decoration: BoxDecoration(
        color: chosenIndex == index ? red : white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: red, width: 4.5),
      ),

      child: Center(child: Text(categoriesList[index], style: chosenIndex == index ? Styles.styleText14White : Styles.styleText14Black)),
    );
  }
}