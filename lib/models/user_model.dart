import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserModel {
  final String id;
  final String username;
  final String email;
  final bool emailVerified;
  final String? photoURL;

  const UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.emailVerified,
    this.photoURL,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
