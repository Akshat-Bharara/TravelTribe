import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveltribe/bloc/groups/groups_bloc.dart';
import 'package:traveltribe/models/group.dart';
import 'package:traveltribe/models/user_model.dart';
import 'package:traveltribe/pages/add_expense_page.dart';
import 'package:traveltribe/pages/all_groups_page.dart';
import 'package:traveltribe/pages/dashboard_page.dart';
import 'package:traveltribe/pages/expense_tracking_page.dart';
import 'package:traveltribe/pages/group_creation_page.dart';
import 'package:traveltribe/pages/group_details_page.dart';
import 'package:traveltribe/pages/home_page.dart';
import 'package:traveltribe/pages/itinerary_page.dart';
import 'package:traveltribe/pages/login_page.dart';
import 'package:traveltribe/pages/manage_join_requests_page.dart';
import 'package:traveltribe/pages/register_page.dart';
import 'package:traveltribe/router/guards/auth_guard.dart';
import 'package:traveltribe/services/authenticator.dart';
import 'package:traveltribe/services/service_locator.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(page: LoginRoute.page),
            AutoRoute(page: RegisterRoute.page),
            AutoRoute(page: DashboardRoute.page),
            AutoRoute(page: AllGroupsRoute.page),
          ],
        ),
        AutoRoute(
          page: ItineraryRoute.page,
          guards: [AuthGuard(authenticator: sl<Authenticator>())],
        ),
        AutoRoute(
          page: GroupDetailsRoute.page,
          guards: [AuthGuard(authenticator: sl<Authenticator>())],
        ),
        AutoRoute(
          page: GroupCreationRoute.page,
          guards: [AuthGuard(authenticator: sl<Authenticator>())],
        ),
        AutoRoute(
          page: ManageJoinRequestsRoute.page,
          guards: [AuthGuard(authenticator: sl<Authenticator>())],
        ),
        AutoRoute(
          page: ExpenseTrackingRoute.page,
          guards: [AuthGuard(authenticator: sl<Authenticator>())],
        ),
        AutoRoute(
          page: AddExpenseRoute.page,
          guards: [AuthGuard(authenticator: sl<Authenticator>())],
        ),
      ];
}
