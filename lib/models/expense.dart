import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense.g.dart';

@JsonSerializable()
class Expense {
  final String name;
  final String? description;
  final num amount;
  final String date;
  final String paidBy;

  const Expense({
    required this.name,
    required this.description,
    required this.amount,
    required this.date,
    required this.paidBy,
  });

  factory Expense.fromJson(Map<String, dynamic> json) =>
      _$ExpenseFromJson(json);

  Map<String, dynamic> toJson() => _$ExpenseToJson(this);
}
