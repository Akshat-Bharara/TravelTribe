import 'package:get_it/get_it.dart';
import 'package:traveltribe/bloc/auth/auth_bloc.dart';
import 'package:traveltribe/services/authenticator.dart';

final sl = GetIt.instance;

void initServices() {
  sl.registerFactory(() => Authenticator());
}

void initBloc() {
  sl.registerFactory(() => AuthBloc());
}
