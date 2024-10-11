// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Expense _$ExpenseFromJson(Map<String, dynamic> json) => Expense(
      name: json['name'] as String,
      description: json['description'] as String?,
      amount: json['amount'] as num,
      date: json['date'] as String,
      paidBy: json['paidBy'] as String,
    );

Map<String, dynamic> _$ExpenseToJson(Expense instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'date': instance.date,
      'paidBy': instance.paidBy,
    };
