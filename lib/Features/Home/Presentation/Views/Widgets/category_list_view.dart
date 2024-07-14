import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_expense_tracker_app/Core/Utils/assets_data.dart';
import 'package:personal_expense_tracker_app/Features/Home/Data/Repositories/Models/transaction_model.dart';
import 'category_list_view_item.dart';

class CategoryListView extends StatefulWidget
{
  const CategoryListView({super.key, required this.transactionModel,});
  final TransactionModel transactionModel;

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView>
{
  int chosenIndex = -1;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        height: 60.h,
        width: double.infinity,
        child: ListView.builder(
          itemCount: AssetsData.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => setState(()
            {
              chosenIndex = index;
              widget.transactionModel.category = AssetsData.categories[chosenIndex];
            }),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CategoryListViewItem(
                index: index,
                chosenIndex: chosenIndex,
                categoriesList: AssetsData.categories,
              ),
            ),
          ),
        ),
      ),
    );
  }
}