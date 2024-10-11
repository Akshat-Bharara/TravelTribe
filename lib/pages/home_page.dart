import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveltribe/bloc/auth/auth_bloc.dart';
import 'package:traveltribe/constants/app_failure.dart';
import 'package:traveltribe/router/app_router.dart';
import 'package:traveltribe/services/service_locator.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (previous, current) => current is AuthError,
        listener: (context, state) =>
            ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(AppFailure.errorMessage((state as AuthError).failure)),
          ),
        ),
        builder: (context, AuthState state) => switch (state) {
          Authenticated() => AutoTabsRouter.pageView(
              homeIndex: 0,
              routes: [
                DashboardRoute(user: state.user),
                AllGroupsRoute(user: state.user),
              ],
              builder: (context, child, _) {
                final tabsRouter = AutoTabsRouter.of(context);
                return Scaffold(
                  body: child,
                  bottomNavigationBar: BottomNavigationBar(
                    onTap: tabsRouter.setActiveIndex,
                    currentIndex: tabsRouter.activeIndex,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.group),
                        label: 'Groups',
                      ),
                    ],
                  ),
                );
              },
            ),
          Unauthenticated() || AuthError() => AutoTabsRouter.pageView(
              routes: [LoginRoute(), RegisterRoute()],
              builder: (context, child, pageController) {
                final tabsRouter = AutoTabsRouter.of(context);
                return Scaffold(
                  body: Column(
                    children: [
                      Expanded(child: child),
                      FilledButton(
                        onPressed: () => tabsRouter
                            .setActiveIndex((tabsRouter.activeIndex + 1) % 2),
                        child: Text(tabsRouter.activeIndex.isEven
                            ? "Don't have an account? Register"
                            : 'Already have an account? Login'),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                );
              },
            ),
          AuthLoading() => Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        },
      ),
    );
  }
}
