import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveltribe/bloc/auth/auth_bloc.dart';
import 'package:traveltribe/router/app_router.dart';
import 'package:traveltribe/services/service_locator.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, AuthState state) => switch (state) {
          Authenticated() => AutoTabsRouter.pageView(
              routes: [DashboardRoute(user: state.user), AllGroupsRoute(user: state.user)],
            ),
          Unauthenticated() => AutoTabsRouter.pageView(
              routes: [LoginRoute(), RegisterRoute()],
            ),
          AuthLoading() => Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          _ => Scaffold(
              appBar: AppBar(
                title: Text('Home'),
              ),
              body: Center(
                child: Text('Welcome Guest'),
              ),
            )
        },
      ),
    );
  }
}
