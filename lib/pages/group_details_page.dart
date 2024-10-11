import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveltribe/bloc/gemini/gemini_bloc.dart';
import 'package:traveltribe/bloc/groups/groups_bloc.dart';
import 'package:traveltribe/models/group.dart';
import 'package:traveltribe/models/user_model.dart';
import 'package:traveltribe/router/app_router.dart';
import 'package:traveltribe/services/service_locator.dart';

@RoutePage()
class GroupDetailsPage extends StatelessWidget {
  final UserModel user;
  final String groupId;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  GroupDetailsPage({
    super.key,
    required this.groupId,
    required this.user,
  });

  Future<void> _showConfirmationDialog(
    BuildContext context,
    GeminiBloc bloc,
    Group group,
  ) async {
    bool confirm = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Generate Itinerary'),
        content: Text('Are you sure you want to generate the itinerary?'),
        actions: [
          TextButton(
            child: Text('Cancel'),
            onPressed: () => Navigator.of(context).pop(false),
          ),
          TextButton(
            child: Text('Proceed'),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      ),
    );

    if (confirm) {
      bloc.add(
        GeminiEvent.generateItinerary(group),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GeminiBloc>(),
      child: BlocConsumer<GeminiBloc, GeminiState>(
        listenWhen: (previous, current) => current is GeminiLoaded,
        listener: (_, __) =>
            ScaffoldMessenger.maybeOf(scaffoldKey.currentContext ?? context)
                ?.showSnackBar(SnackBar(content: Text('Itinerary generated'))),
        builder: (context, state) => BlocProvider(
          create: (context) =>
              sl<GroupsBloc>()..add(GroupsEvent.fetchGroup(groupId)),
          child: switch (state) {
            GeminiLoading() => Center(child: CircularProgressIndicator()),
            GeminiLoaded() || GeminiError() || GeminiInitial() => Scaffold(
                key: scaffoldKey,
                appBar: AppBar(
                  title: Text('Group Details'),
                  centerTitle: true,
                ),
                body: BlocBuilder<GroupsBloc, GroupsState>(
                  builder: (context, state) => switch (state) {
                    GroupsLoading() =>
                      Center(child: CircularProgressIndicator()),
                    GroupsError() =>
                      Center(child: Text("Something went wrong")),
                    Loaded() => _buildGroupDetails(context, state.group),
                    Created() => _buildGroupDetails(context, state.group),
                    Updated() => _buildGroupDetails(context, state.group)
                  },
                ),
              )
          },
        ),
      ),
    );
  }

  Padding _buildGroupDetails(BuildContext context, Group group) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Group Name: ${group.groupName}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Destination: ${group.destination}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Owner: ${group.owner}',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 10),
            Text(
              'Dates: ${group.startDate} to ${group.endDate}',
              style: TextStyle(fontSize: 16),
            ),
            if (group.owner == user.username && group.itinerary == null)
              ListTile(
                trailing: Icon(Icons.arrow_forward_ios),
                contentPadding: EdgeInsets.zero,
                onTap: () => _showConfirmationDialog(
                  context,
                  BlocProvider.of<GeminiBloc>(context),
                  group,
                ),
                title: Text('Generate Itinerary'),
              )
            else
              ListTile(
                contentPadding: EdgeInsets.zero,
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () => AutoRouter.of(context).push(
                  ItineraryRoute(groupId: group.id, user: user),
                ),
                title: Text("View Itinerary"),
              ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              contentPadding: EdgeInsets.zero,
              onTap: () => AutoRouter.of(context).push(
                ExpenseTrackingRoute(
                    group: group,
                    user: user,
                    bloc: BlocProvider.of<GroupsBloc>(context)),
              ),
              title: Text("View Expenses"),
            ),
            ExpansionTile(
              tilePadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              collapsedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              title: Text('Members'),
              children: List.generate(
                group.members.length,
                (index) => ListTile(title: Text(group.members[index])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
