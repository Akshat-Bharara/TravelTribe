import 'package:flutter_gemini/flutter_gemini.dart';

class GeminiProvider {
  final _gemini = Gemini.instance;

  Future<String> generateItinerary({
    required String destination,
    required String startDate,
    required String endDate,
  }) async {
    final res = await _gemini.text(
        "Generate a detailed itinerary for a trip to $destination from $startDate to $endDate");
    return res?.output ?? 'Could not generate itinerary';
  }
}
