import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_expense_tracker_app/Features/Home/Data/Repositories/Models/transaction_model.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Views/Widgets/title_field.dart';
import 'add_transaction_button.dart';
import 'amount_field.dart';
import 'category_list_view.dart';
import 'custom_divider.dart';

class CustomBottomSheet extends StatefulWidget
{
  const CustomBottomSheet({super.key,});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet>
{
  TransactionModel transactionModel = TransactionModel(title: '', amount: 0.0, day: '', category: '', date: '');

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        const CustomDivider(),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: TitleField(onChanged: (data) => setState(() => transactionModel.title = data)),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: AmountField(onChanged: (data) => setState(() => transactionModel.amount = double.parse(data))),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        CategoryListView(transactionModel: transactionModel),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        AddTransactionButton(transactionModel: transactionModel),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
      ],
    );
  }
}