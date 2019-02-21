import 'package:meta/meta.dart';

@immutable
class Transaction {
  final DateTime date;
  final num amount;
  final String payee;
  final String category;
  final String memo;

  const Transaction(
      {this.date, this.amount, this.payee, this.category, this.memo});
}
