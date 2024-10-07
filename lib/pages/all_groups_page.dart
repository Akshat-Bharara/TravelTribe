import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AllGroupsPage extends StatefulWidget {
  @override
  _AllGroupsPageState createState() => _AllGroupsPageState();
}

class _AllGroupsPageState extends State<AllGroupsPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String? currentUserName;

  @override
  void initState() {
    super.initState();
    _getCurrentUserName();
  }

  Future<void> _getCurrentUserName() async {
    User? user = _auth.currentUser;
    if (user != null) {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
      setState(() {
        currentUserName = userDoc['fullName'] ?? 'Unknown User'; // Assuming 'fullName' is stored in Firestore
      });
    }
  }

  void _sendJoinRequest(String groupId, String groupOwner) async {
    User? user = _auth.currentUser;

    if (user != null && currentUserName != null) {
      await FirebaseFirestore.instance.collection('join_requests').add({
        'groupId': groupId,
        'groupOwner': groupOwner,
        'requestingUser': user.email, 
        'requestingUserName': currentUserName, 
        'status': 'pending',
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Groups'),
      ),
      body: currentUserName == null
          ? Center(child: CircularProgressIndicator()) 
          : StreamBuilder(
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

                final filteredGroups = snapshot.data!.docs.where((doc) {
                  var groupData = doc.data() as Map<String, dynamic>;
                  List<dynamic> members = groupData['members'] ?? [];
                  return !members.contains(currentUserName); 
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
