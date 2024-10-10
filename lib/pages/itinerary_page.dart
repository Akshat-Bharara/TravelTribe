import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:traveltribe/models/user_model.dart';

@RoutePage()
class ItineraryPage extends StatefulWidget {
  final UserModel user;
  final String groupId;

  ItineraryPage({required this.groupId, required this.user});

  @override
  _ItineraryPageState createState() => _ItineraryPageState();
}

class _ItineraryPageState extends State<ItineraryPage> {
  late TextEditingController _itineraryController;
  late String groupOwnerUsername;

  @override
  void initState() {
    super.initState();
    _itineraryController = TextEditingController();
    _getGroupData(); 
  }

  @override
  void dispose() {
    _itineraryController.dispose();
    super.dispose();
  }

  void _updateItinerary() async {
    await FirebaseFirestore.instance.collection('groups').doc(widget.groupId).update({
      'itinerary': _itineraryController.text,
    });
  }

  void _finalizeTrip() async {
    await FirebaseFirestore.instance.collection('groups').doc(widget.groupId).update({
      'tripFinalized': true,
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Trip has been finalized!')),
    );
  }

  Future<void> _getGroupData() async {
    DocumentSnapshot groupDoc = await FirebaseFirestore.instance.collection('groups').doc(widget.groupId).get();
    var groupData = groupDoc.data() as Map<String, dynamic>;
    groupOwnerUsername = groupData['owner'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Itinerary'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              if (widget.user.username == groupOwnerUsername) {
                _finalizeTrip();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Only the group owner can finalize the trip.')),
                );
              }
            },
          ),
        ],
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.collection('groups').doc(widget.groupId).snapshots(),
        builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('Itinerary not found'));
          }

          var groupData = snapshot.data!.data() as Map<String, dynamic>;
          String itinerary = groupData['itinerary'] ?? 'No itinerary generated yet.';
          _itineraryController.text = itinerary;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: _itineraryController,
                    maxLines: null,
                    decoration: InputDecoration(
                      labelText: 'Edit Itinerary',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      _updateItinerary();
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Real-time updates will reflect in the itinerary.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
