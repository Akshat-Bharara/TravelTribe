import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:traveltribe/router/app_router.dart';
import 'package:traveltribe/services/authenticator.dart';
import 'package:traveltribe/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Gemini.init(apiKey: String.fromEnvironment("GEMINI_API_KEY"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'TravelTribe',
      theme: ThemeData.dark(),
      routerConfig: sl<AppRouter>().config(
        reevaluateListenable: sl<Authenticator>(),
      ),
    );
  }
}
