// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      id: json['id'] as String,
      owner: json['owner'] as String,
      groupName: json['groupName'] as String,
      destination: json['destination'] as String,
      description: json['description'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      itinerary: json['itinerary'] as String?,
      expenses: (json['expenses'] as List<dynamic>)
          .map((e) => Expense.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'groupName': instance.groupName,
      'destination': instance.destination,
      'description': instance.description,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'members': instance.members,
      'itinerary': instance.itinerary,
      'expenses': instance.expenses.map((e) => e.toJson()).toList(),
    };
