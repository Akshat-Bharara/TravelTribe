import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:traveltribe/pages/all_groups_page.dart';
import 'package:traveltribe/pages/group_details_page.dart';
import 'package:traveltribe/pages/itinerary_page.dart';
import 'package:traveltribe/pages/manage_join_requests_page.dart'; // Import the new page
import 'group_creation_page.dart';
import 'login_page.dart';

class DashboardPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _logout(BuildContext context) async {
    await _auth.signOut();
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => LoginPage()),
      (Route<dynamic> route) => false,
    );
  }

  void _navigateToPage(BuildContext context, String groupId, bool hasItinerary) {
    if (hasItinerary) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ItineraryPage(groupId: groupId)),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GroupDetailsPage(groupId: groupId)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
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
                    .where('members', arrayContains: _auth.currentUser?.email)
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
                      bool hasItinerary = groupData.containsKey('itinerary') && groupData['itinerary'] != null;

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
                            _navigateToPage(context, doc.id, hasItinerary);
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllGroupsPage()),
                );
              },
              child: Text('View All Groups'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),
            SizedBox(height: 20),
            // Button to navigate to Manage Join Requests Page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageJoinRequestsPage()),
                );
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GroupCreationPage()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
