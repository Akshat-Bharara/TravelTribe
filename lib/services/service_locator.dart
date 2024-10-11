import 'package:get_it/get_it.dart';
import 'package:traveltribe/bloc/auth/auth_bloc.dart';
import 'package:traveltribe/bloc/gemini/gemini_bloc.dart';
import 'package:traveltribe/bloc/groups/groups_bloc.dart';
import 'package:traveltribe/router/app_router.dart';
import 'package:traveltribe/services/authenticator.dart';
import 'package:traveltribe/services/database_provider.dart';
import 'package:traveltribe/services/gemini_provider.dart';

final sl = GetIt.instance;

void initServices() {
  sl.registerFactory(() => Authenticator());
  sl.registerLazySingleton(() => AppRouter());
  sl.registerLazySingleton(() => DatabaseProvider());
  sl.registerLazySingleton(() => GeminiProvider());
}

void initBloc() {
  sl.registerFactory(() => AuthBloc());
  sl.registerFactory(() => GroupsBloc());
  sl.registerFactory(() => GeminiBloc());
}
