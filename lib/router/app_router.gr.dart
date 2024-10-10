// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AllGroupsPage]
class AllGroupsRoute extends PageRouteInfo<AllGroupsRouteArgs> {
  AllGroupsRoute({
    Key? key,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          AllGroupsRoute.name,
          args: AllGroupsRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'AllGroupsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AllGroupsRouteArgs>();
      return AllGroupsPage(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class AllGroupsRouteArgs {
  const AllGroupsRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final UserModel user;

  @override
  String toString() {
    return 'AllGroupsRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    Key? key,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          DashboardRoute.name,
          args: DashboardRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DashboardRouteArgs>();
      return DashboardPage(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class DashboardRouteArgs {
  const DashboardRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final UserModel user;

  @override
  String toString() {
    return 'DashboardRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [GroupCreationPage]
class GroupCreationRoute extends PageRouteInfo<GroupCreationRouteArgs> {
  GroupCreationRoute({
    Key? key,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          GroupCreationRoute.name,
          args: GroupCreationRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupCreationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GroupCreationRouteArgs>();
      return GroupCreationPage(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class GroupCreationRouteArgs {
  const GroupCreationRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final UserModel user;

  @override
  String toString() {
    return 'GroupCreationRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [GroupDetailsPage]
class GroupDetailsRoute extends PageRouteInfo<GroupDetailsRouteArgs> {
  GroupDetailsRoute({
    required String groupId,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          GroupDetailsRoute.name,
          args: GroupDetailsRouteArgs(
            groupId: groupId,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'GroupDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GroupDetailsRouteArgs>();
      return GroupDetailsPage(
        groupId: args.groupId,
        user: args.user,
      );
    },
  );
}

class GroupDetailsRouteArgs {
  const GroupDetailsRouteArgs({
    required this.groupId,
    required this.user,
  });

  final String groupId;

  final UserModel user;

  @override
  String toString() {
    return 'GroupDetailsRouteArgs{groupId: $groupId, user: $user}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [ItineraryPage]
class ItineraryRoute extends PageRouteInfo<ItineraryRouteArgs> {
  ItineraryRoute({
    required String groupId,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          ItineraryRoute.name,
          args: ItineraryRouteArgs(
            groupId: groupId,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ItineraryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ItineraryRouteArgs>();
      return ItineraryPage(
        groupId: args.groupId,
        user: args.user,
      );
    },
  );
}

class ItineraryRouteArgs {
  const ItineraryRouteArgs({
    required this.groupId,
    required this.user,
  });

  final String groupId;

  final UserModel user;

  @override
  String toString() {
    return 'ItineraryRouteArgs{groupId: $groupId, user: $user}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return LoginPage();
    },
  );
}

/// generated route for
/// [ManageJoinRequestsPage]
class ManageJoinRequestsRoute
    extends PageRouteInfo<ManageJoinRequestsRouteArgs> {
  ManageJoinRequestsRoute({
    Key? key,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          ManageJoinRequestsRoute.name,
          args: ManageJoinRequestsRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ManageJoinRequestsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageJoinRequestsRouteArgs>();
      return ManageJoinRequestsPage(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class ManageJoinRequestsRouteArgs {
  const ManageJoinRequestsRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final UserModel user;

  @override
  String toString() {
    return 'ManageJoinRequestsRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return RegisterPage();
    },
  );
}
