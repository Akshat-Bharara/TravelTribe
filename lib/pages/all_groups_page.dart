import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AllGroupsPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _sendJoinRequest(String groupId, String groupOwner) async {
    User? user = _auth.currentUser;

    if (user != null) {
      await FirebaseFirestore.instance.collection('join_requests').add({
        'groupId': groupId,
        'groupOwner': groupOwner,
        'requestingUser': user.email,
        'status': 'pending',
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    User? user = _auth.currentUser;
    String? currentUserEmail = user?.email;

    return Scaffold(
      appBar: AppBar(
        title: Text('All Groups'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('groups').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No groups available.'));
          }

          // Filter groups to exclude those that the user is already a member of
          final filteredGroups = snapshot.data!.docs.where((doc) {
            var groupData = doc.data() as Map<String, dynamic>;
            List<dynamic> members = groupData['members'] ?? [];
            return !members.contains(currentUserEmail);
          }).toList();

          if (filteredGroups.isEmpty) {
            return Center(child: Text('You are already a member of all groups.'));
          }

          return ListView(
            children: filteredGroups.map((doc) {
              var groupData = doc.data() as Map<String, dynamic>;
              return Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  title: Text(
                    groupData['groupName'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Destination: ${groupData['destination']}'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      _sendJoinRequest(doc.id, groupData['owner']);
                    },
                    child: Text('Request to Join'),
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
