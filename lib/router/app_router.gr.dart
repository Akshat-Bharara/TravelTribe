// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddExpensePage]
class AddExpenseRoute extends PageRouteInfo<AddExpenseRouteArgs> {
  AddExpenseRoute({
    Key? key,
    required Group group,
    required UserModel user,
    required GroupsBloc bloc,
    List<PageRouteInfo>? children,
  }) : super(
          AddExpenseRoute.name,
          args: AddExpenseRouteArgs(
            key: key,
            group: group,
            user: user,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'AddExpenseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddExpenseRouteArgs>();
      return AddExpensePage(
        key: args.key,
        group: args.group,
        user: args.user,
        bloc: args.bloc,
      );
    },
  );
}

class AddExpenseRouteArgs {
  const AddExpenseRouteArgs({
    this.key,
    required this.group,
    required this.user,
    required this.bloc,
  });

  final Key? key;

  final Group group;

  final UserModel user;

  final GroupsBloc bloc;

  @override
  String toString() {
    return 'AddExpenseRouteArgs{key: $key, group: $group, user: $user, bloc: $bloc}';
  }
}

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
/// [ExpenseTrackingPage]
class ExpenseTrackingRoute extends PageRouteInfo<ExpenseTrackingRouteArgs> {
  ExpenseTrackingRoute({
    Key? key,
    required Group group,
    required UserModel user,
    required GroupsBloc bloc,
    List<PageRouteInfo>? children,
  }) : super(
          ExpenseTrackingRoute.name,
          args: ExpenseTrackingRouteArgs(
            key: key,
            group: group,
            user: user,
            bloc: bloc,
          ),
          initialChildren: children,
        );

  static const String name = 'ExpenseTrackingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ExpenseTrackingRouteArgs>();
      return ExpenseTrackingPage(
        key: args.key,
        group: args.group,
        user: args.user,
        bloc: args.bloc,
      );
    },
  );
}

class ExpenseTrackingRouteArgs {
  const ExpenseTrackingRouteArgs({
    this.key,
    required this.group,
    required this.user,
    required this.bloc,
  });

  final Key? key;

  final Group group;

  final UserModel user;

  final GroupsBloc bloc;

  @override
  String toString() {
    return 'ExpenseTrackingRouteArgs{key: $key, group: $group, user: $user, bloc: $bloc}';
  }
}

/// generated route for
/// [GroupCreationPage]
class GroupCreationRoute extends PageRouteInfo<GroupCreationRouteArgs> {
  GroupCreationRoute({
    Key? key,
    required UserModel user,
    required GroupsBloc bloc,
    List<PageRouteInfo>? children,
  }) : super(
          GroupCreationRoute.name,
          args: GroupCreationRouteArgs(
            key: key,
            user: user,
            bloc: bloc,
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
        bloc: args.bloc,
      );
    },
  );
}

class GroupCreationRouteArgs {
  const GroupCreationRouteArgs({
    this.key,
    required this.user,
    required this.bloc,
  });

  final Key? key;

  final UserModel user;

  final GroupsBloc bloc;

  @override
  String toString() {
    return 'GroupCreationRouteArgs{key: $key, user: $user, bloc: $bloc}';
  }
}

/// generated route for
/// [GroupDetailsPage]
class GroupDetailsRoute extends PageRouteInfo<GroupDetailsRouteArgs> {
  GroupDetailsRoute({
    Key? key,
    required String groupId,
    required UserModel user,
    List<PageRouteInfo>? children,
  }) : super(
          GroupDetailsRoute.name,
          args: GroupDetailsRouteArgs(
            key: key,
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
        key: args.key,
        groupId: args.groupId,
        user: args.user,
      );
    },
  );
}

class GroupDetailsRouteArgs {
  const GroupDetailsRouteArgs({
    this.key,
    required this.groupId,
    required this.user,
  });

  final Key? key;

  final String groupId;

  final UserModel user;

  @override
  String toString() {
    return 'GroupDetailsRouteArgs{key: $key, groupId: $groupId, user: $user}';
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
