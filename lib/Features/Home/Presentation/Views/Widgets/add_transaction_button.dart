import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:personal_expense_tracker_app/Features/Home/Data/Repositories/Models/transaction_model.dart';
import 'package:personal_expense_tracker_app/Features/Home/Presentation/Managers/Add%20Transaction%20Cubit/add_transaction_cubit.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../Managers/All Transactions Cubit/all_transactions_cubit.dart';
import 'add_transaction_button_body.dart';

class AddTransactionButton extends StatelessWidget
{
  const AddTransactionButton({super.key, required this.transactionModel,});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<AddTransactionCubit, AddTransactionState>(
      listener: (context, state)
      {
        if(state is AddTransactionSuccess)
        {
          BlocProvider.of<AllTransactionsCubit>(context).fetchAllTransactions();
          Navigator.pop(context);
        }
      },

      builder: (context, state)
      {
        return SizedBox(
          height: 65.h,
          width: 400.w,
          child: MaterialButton(
            color: amber,
            splashColor: black.withOpacity(0.25),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            onPressed: ()
            {
              DateTime currentDate = DateTime.now();
              String currentFormattedDate = DateFormat('yyyy-MM-dd').format(currentDate);
              String dayName = DateFormat('EEEE').format(currentDate);

              transactionModel.day = dayName;
              transactionModel.date = currentFormattedDate;

              BlocProvider.of<AddTransactionCubit>(context).addTransaction(transactionModel: transactionModel);
            },
            child: const AddTransactionButtonBody(),
          ),
        );
      },
    );
  }
}