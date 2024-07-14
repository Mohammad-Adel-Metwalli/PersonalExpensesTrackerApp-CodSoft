import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_expense_tracker_app/Features/Home/Data/Repositories/Models/transaction_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/Utils/constants.dart';
part 'add_transaction_state.dart';

class AddTransactionCubit extends Cubit<AddTransactionState>
{
  AddTransactionCubit() : super(AddTransactionInitial());

  addTransaction({required TransactionModel transactionModel}) async
  {
    emit(AddTransactionLoading());

    try
    {
      var transactions = Hive.box<TransactionModel>(transactionsBox);
      await transactions.add(transactionModel);

      emit(AddTransactionSuccess());
    }

    catch(error)
    {
      emit(AddTransactionFailure(failureMessage: 'Transaction has been failed'));
    }
  }
}
