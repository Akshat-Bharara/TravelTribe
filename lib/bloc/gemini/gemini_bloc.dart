import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:traveltribe/constants/app_failure.dart';
import 'package:traveltribe/models/group.dart';
import 'package:traveltribe/services/database_provider.dart';
import 'package:traveltribe/services/gemini_provider.dart';
import 'package:traveltribe/services/service_locator.dart';

part 'gemini_event.dart';
part 'gemini_state.dart';
part 'gemini_bloc.freezed.dart';

class GeminiBloc extends Bloc<GeminiEvent, GeminiState> {
  final GeminiProvider _geminiProvider = sl<GeminiProvider>();
  final DatabaseProvider _databaseProvider = sl<DatabaseProvider>();
  GeminiBloc() : super(GeminiState.initial()) {
    on<_GenerateItinerary>(_onGenerateItinerary);
  }

  Future<void> _onGenerateItinerary(
    _GenerateItinerary event,
    Emitter<GeminiState> emit,
  ) async {
    emit(GeminiState.loading());
    try {
      final itinerary = await _geminiProvider.generateItinerary(
        destination: event.group.destination,
        startDate: event.group.startDate,
        endDate: event.group.endDate,
      );
      await _databaseProvider.updateGroup(
        event.group.copyWith(itinerary: itinerary),
      );
      emit(GeminiState.loaded(itinerary));
    } on AppFailure catch (e) {
      emit(GeminiState.error(e));
    }
  }
}
