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
    await FirebaseFirestore.instance
        .collection('groups')
        .doc(widget.groupId)
        .update({
      'itinerary': _itineraryController.text,
    });
  }

  void _finalizeTrip(BuildContext context) async {
    await FirebaseFirestore.instance
        .collection('groups')
        .doc(widget.groupId)
        .update({
      'tripFinalized': true,
    });

    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Trip has been finalized!')),
      );
    }
  }

  Future<void> _getGroupData() async {
    DocumentSnapshot groupDoc = await FirebaseFirestore.instance
        .collection('groups')
        .doc(widget.groupId)
        .get();
    var groupData = groupDoc.data() as Map<String, dynamic>;
    groupOwnerUsername = groupData['owner'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Itinerary'),
        centerTitle: true,
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('groups')
            .doc(widget.groupId)
            .snapshots(),
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
          String itinerary =
              groupData['itinerary'] ?? 'No itinerary generated yet.';
          _itineraryController.text = itinerary;

          return Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterFloat,
            floatingActionButton: groupData['tripFinalized'] != true
                ? FloatingActionButton(
                    onPressed: () {
                      if (widget.user.username == groupOwnerUsername) {
                        _finalizeTrip(context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(
                                  'Only the group owner can finalize the trip.')),
                        );
                      }
                    },
                    child: Text("Finalize"),
                  )
                : null,
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16),
                    if (groupData['tripFinalized'] != true) ...[
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
                    ] else
                      Text(
                        itinerary,
                        style: TextStyle(fontSize: 16),
                      ),
                    SizedBox(height: 64)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
