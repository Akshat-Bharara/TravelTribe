import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveltribe/bloc/auth/auth_bloc.dart';
import 'package:traveltribe/bloc/groups/groups_bloc.dart';
import 'package:traveltribe/models/user_model.dart';
import 'package:traveltribe/router/app_router.dart';
import 'package:traveltribe/services/service_locator.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  final UserModel user;

  const DashboardPage({super.key, required this.user});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  void _logout(BuildContext context) async {
    BlocProvider.of<AuthBloc>(context).add(AuthEvent.signOut());
  }

  void _navigateToPage(
    BuildContext context,
    String groupId,
  ) {
    AutoRouter.of(context)
        .push(GroupDetailsRoute(groupId: groupId, user: widget.user));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('groups')
                    .where(
                      'members',
                      arrayContains: widget.user.username,
                    )
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  if (snapshot.data!.docs.isEmpty) {
                    return Center(child: Text('No groups yet!'));
                  }

                  return ListView(
                    children: snapshot.data!.docs.map((doc) {
                      var groupData = doc.data() as Map<String, dynamic>;
                      return Card(
                        elevation: 4,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          title: Text(
                            groupData['groupName'],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Destination: ${groupData['destination']}'),
                              Text('Owner: ${groupData['owner']}'),
                            ],
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            _navigateToPage(context, doc.id);
                          },
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context)
                    .push(ManageJoinRequestsRoute(user: widget.user));
              },
              child: Text('Manage Join Requests'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context).push(
            GroupCreationRoute(
              user: widget.user,
              bloc: sl<GroupsBloc>(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
