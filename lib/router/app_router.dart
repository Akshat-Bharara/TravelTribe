import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:traveltribe/models/user_model.dart';
import 'package:traveltribe/pages/all_groups_page.dart';
import 'package:traveltribe/pages/group_creation_page.dart';
import 'package:traveltribe/pages/group_details_page.dart';
import 'package:traveltribe/pages/home_page.dart';
import 'package:traveltribe/pages/manage_join_requests_page.dart';
import 'package:traveltribe/pages/itinerary_page.dart';
import 'package:traveltribe/pages/dashboard_page.dart';
import 'package:traveltribe/pages/login_page.dart';
import 'package:traveltribe/pages/register_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(page: LoginRoute.page, path: 'login'),
            AutoRoute(page: RegisterRoute.page, path: 'register'),
            AutoRoute(page: DashboardRoute.page, path: 'dashboard'),
            AutoRoute(
              page: AllGroupsRoute.page,
              path: 'groups',
              children: [
                AutoRoute(
                  page: GroupDetailsRoute.page,
                  path: 'group-details/:groupId',
                ),
                AutoRoute(
                  page: GroupCreationRoute.page,
                  path: 'create-group',
                ),
                AutoRoute(
                  page: ManageJoinRequestsRoute.page,
                  path: 'manage-join-requests/:groupId',
                ),
                AutoRoute(
                  page: ItineraryRoute.page,
                  path: 'itinerary/:groupId',
                ),
              ],
            ),
          ],
        )
      ];
}
