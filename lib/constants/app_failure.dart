import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
abstract class AppFailure with _$AppFailure {
  const factory AppFailure.emailAlreadyUsed() = _EmailAlreadyUsed;
  const factory AppFailure.unknown() = _Unknown;
  const factory AppFailure.incorrectEmailOrPassword() = _IncorrectEmailOrPassword;
}