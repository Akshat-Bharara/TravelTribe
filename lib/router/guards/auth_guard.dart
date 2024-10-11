import 'package:auto_route/auto_route.dart';
import 'package:traveltribe/router/app_router.dart';
import 'package:traveltribe/services/authenticator.dart';

class AuthGuard extends AutoRouteGuard {
  final Authenticator _authenticator;

  AuthGuard({required Authenticator authenticator})
      : _authenticator = authenticator;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_authenticator.isAuthenticated) {
      resolver.next(true);
    } else {
      router.push(const HomeRoute());
    }
  }
}
