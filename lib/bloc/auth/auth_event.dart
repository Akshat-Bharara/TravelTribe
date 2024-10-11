part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkStatus() = _AuthCheckRequested;
  const factory AuthEvent.signIn(
      {required final String email, required final String password}) = _SignIn;
  const factory AuthEvent.signUp(
      {required final String username,
      required final String email,
      required final String password}) = _SignUp;
  const factory AuthEvent.signOut() = _SignOut;
}
