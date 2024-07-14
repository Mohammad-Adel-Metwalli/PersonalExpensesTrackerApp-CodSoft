import 'package:hive/hive.dart';
part 'transaction_model.g.dart';

@HiveType(typeId: 0)
class TransactionModel extends HiveObject
{
  @HiveField(0)
  String title;
  @HiveField(1)
  double amount;
  @HiveField(2)
  String day;
  @HiveField(3)
  String category;
  @HiveField(4)
  String date;

  TransactionModel({
    required this.title,
    required this.amount,
    required this.day,
    required this.category,
    required this.date,
  });
}