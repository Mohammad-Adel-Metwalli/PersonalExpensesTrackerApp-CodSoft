part of 'all_transactions_cubit.dart';

@immutable
sealed class AllTransactionsState {}

final class AllTransactionsInitial extends AllTransactionsState {}
final class AllTransactionsSuccess extends AllTransactionsState {}