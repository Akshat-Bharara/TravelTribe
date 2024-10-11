import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
abstract class AppFailure with _$AppFailure {
  const factory AppFailure.emailAlreadyUsed() = _EmailAlreadyUsed;
  const factory AppFailure.unknown() = _Unknown;
  const factory AppFailure.incorrectEmailOrPassword() =
      _IncorrectEmailOrPassword;
  const factory AppFailure.noGeminiResponse() = _NoGeminiResponse;

  static String errorMessage(AppFailure failure) {
    return failure.when(
      emailAlreadyUsed: () => 'Email already in use',
      unknown: () => 'An unknown error occurred',
      incorrectEmailOrPassword: () => 'Incorrect email or password',
      noGeminiResponse: () => 'No response from Gemini',
    );
  }
}
