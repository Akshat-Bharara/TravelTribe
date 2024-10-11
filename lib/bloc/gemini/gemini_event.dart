part of 'gemini_bloc.dart';

@freezed
sealed class GeminiEvent with _$GeminiEvent {
  const factory GeminiEvent.generateItinerary(Group group) = _GenerateItinerary;
}
