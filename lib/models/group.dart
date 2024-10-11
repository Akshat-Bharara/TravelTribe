import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:traveltribe/models/expense.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group with _$Group {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory Group({
    required final String id,
    required final String owner,
    required final String groupName,
    required final String destination,
    required final String description,
    required final String startDate,
    required final String endDate,
    required final List<String> members,
    required final String? itinerary,
    required final List<Expense> expenses,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}
