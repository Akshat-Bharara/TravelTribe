import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:traveltribe/models/user_model.dart';
import 'package:traveltribe/router/app_router.dart'; 

@RoutePage()
class GroupDetailsPage extends StatelessWidget {
  final UserModel user;
  final String groupId;

  GroupDetailsPage({required this.groupId, required this.user});

  Future<void> _generateItinerary(BuildContext context) async {
    final _gemini = Gemini.instance;

    DocumentSnapshot groupDoc = await FirebaseFirestore.instance.collection('groups').doc(groupId).get();
    var groupData = groupDoc.data() as Map<String, dynamic>;

    String destination = groupData['destination'];
    String startDate = groupData['startDate'];
    String endDate = groupData['endDate'];

    String prompt = "Generate a detailed itinerary for a trip to $destination from $startDate to $endDate";

    try {
      var response = await _gemini.text(prompt);
      
      String? itinerary = response?.output;

      if (itinerary == null || itinerary.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to generate an itinerary. Please try again later.')),
        );
        return;
      }

      await FirebaseFirestore.instance.collection('groups').doc(groupId).update({
        'itinerary': itinerary,
      });

      AutoRouter.of(context).navigate(ItineraryRoute(groupId: groupId, user: user));
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error generating itinerary: $error')),
      );
    }
  }

  Future<void> _showConfirmationDialog(BuildContext context) async {
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
      _generateItinerary(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Details'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.collection('groups').doc(groupId).snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('Group not found'));
          }

          var groupData = snapshot.data!.data() as Map<String, dynamic>;
          List<dynamic> members = groupData['members'] ?? [];
          String owner = groupData['owner'];

          bool isOwner = user.username == owner;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Group Name: ${groupData['groupName']}',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Destination: ${groupData['destination']}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  'Owner: ${groupData['owner']}',
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 10),
                if (groupData['startDate'] != null && groupData['endDate'] != null)
                  Text(
                    'Dates: ${groupData['startDate']} to ${groupData['endDate']}',
                    style: TextStyle(fontSize: 16),
                  ),
                SizedBox(height: 20),
                Text(
                  'Members',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: members.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(members[index]),
                      );
                    },
                  ),
                ),
                if (isOwner)
                  ElevatedButton(
                    onPressed: () => _showConfirmationDialog(context),
                    child: Text('Generate Itinerary'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
