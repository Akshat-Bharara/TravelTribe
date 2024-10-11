part of 'gemini_bloc.dart';

@freezed
sealed class GeminiState with _$GeminiState {
  const factory GeminiState.initial() = GeminiInitial;
  const factory GeminiState.loading() = GeminiLoading;
  const factory GeminiState.loaded(String data) = GeminiLoaded;
  const factory GeminiState.error(AppFailure failure) = GeminiError;
}
