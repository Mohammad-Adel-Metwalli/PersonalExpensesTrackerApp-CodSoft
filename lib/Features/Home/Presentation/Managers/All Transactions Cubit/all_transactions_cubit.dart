import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:personal_expense_tracker_app/Core/Utils/constants.dart';
import '../../../Data/Repositories/Models/transaction_model.dart';
part 'all_transactions_state.dart';

class AllTransactionsCubit extends Cubit<AllTransactionsState>
{
  AllTransactionsCubit() : super(AllTransactionsInitial());
  List<TransactionModel> allTransactions = [];

  fetchAllTransactions()
  {
    var allTransactionsBox = Hive.box<TransactionModel>(transactionsBox);
    allTransactions = allTransactionsBox.values.toList();

    emit(AllTransactionsSuccess());
  }
}