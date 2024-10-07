import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ManageJoinRequestsPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> _getUserName(String email) async {
    DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('users').doc(email).get();
    return userDoc['name'] ?? 'Unknown User'; 
  }

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
              String requestingUserEmail = requestData['requestingUser'];
              
              return FutureBuilder<String>(
                future: _getUserName(requestingUserEmail),
                builder: (context, userSnapshot) {
                  if (userSnapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  }

                  if (userSnapshot.hasError) {
                    return Card(
                      elevation: 4,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        title: Text('Error loading user'),
                      ),
                    );
                  }

                  String userName = userSnapshot.data ?? 'Unknown User';
                  
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(userName),
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
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
