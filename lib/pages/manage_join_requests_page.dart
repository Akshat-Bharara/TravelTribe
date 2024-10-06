import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ManageJoinRequestsPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _handleJoinRequest(String requestId, bool isAccepted) async {
    await FirebaseFirestore.instance.collection('join_requests').doc(requestId).update({
      'status': isAccepted ? 'accepted' : 'rejected',
    });

    if (isAccepted) {
      var request = await FirebaseFirestore.instance.collection('join_requests').doc(requestId).get();
      var groupId = request['groupId'];
      var requestingUser = request['requestingUser'];

      await FirebaseFirestore.instance.collection('groups').doc(groupId).update({
        'members': FieldValue.arrayUnion([requestingUser]),
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Join Requests'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('join_requests')
            .where('groupOwner', isEqualTo: _auth.currentUser?.email)
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
              return Card(
                elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  title: Text('User: ${requestData['requestingUser']}'),
                  subtitle: Text('Group ID: ${requestData['groupId']}'),
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
