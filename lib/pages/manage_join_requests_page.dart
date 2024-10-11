import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:traveltribe/models/user_model.dart';

@RoutePage()
class ManageJoinRequestsPage extends StatelessWidget {
  final UserModel user;

  const ManageJoinRequestsPage({super.key, required this.user});

  void _handleJoinRequest(String requestId, bool isAccepted) async {
    await FirebaseFirestore.instance
        .collection('join_requests')
        .doc(requestId)
        .update({
      'status': isAccepted ? 'accepted' : 'rejected',
    });

    if (isAccepted) {
      var request = await FirebaseFirestore.instance
          .collection('join_requests')
          .doc(requestId)
          .get();
      var groupId = request['groupId'];
      var requestingUser = request['requestingUserName'];

      await FirebaseFirestore.instance
          .collection('groups')
          .doc(groupId)
          .update({
        'members': FieldValue.arrayUnion([requestingUser]),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Join Requests'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('join_requests')
            .where('groupOwner', isEqualTo: user.username)
            .where('status', isEqualTo: 'pending')
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No pending requests.'));
          }

          return ListView(
            children: snapshot.data!.docs.map((doc) {
              var requestData = doc.data() as Map<String, dynamic>;
              String requestingUserEmail = requestData['requestingUser'];

              return Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  title: Text(user.username),
                  subtitle: Text(requestingUserEmail),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.check, color: Colors.green),
                        onPressed: () => _handleJoinRequest(doc.id, true),
                      ),
                      IconButton(
                        icon: Icon(Icons.close, color: Colors.red),
                        onPressed: () => _handleJoinRequest(doc.id, false),
                      ),
                    ],
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
