import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart'; 

class GroupCreationPage extends StatefulWidget {
  @override
  _GroupCreationPageState createState() => _GroupCreationPageState();
}

class _GroupCreationPageState extends State<GroupCreationPage> {
  final _groupNameController = TextEditingController();
  final _destinationController = TextEditingController();
  final _descriptionController = TextEditingController();

  DateTime? _startDate;
  DateTime? _endDate;

  void _createGroup() async {
    String groupName = _groupNameController.text.trim();
    String destination = _destinationController.text.trim();
    String description = _descriptionController.text.trim();
    User? user = FirebaseAuth.instance.currentUser;

    if (groupName.isNotEmpty && destination.isNotEmpty && user != null && _startDate != null && _endDate != null) {
      await FirebaseFirestore.instance.collection('groups').add({
        'groupName': groupName,
        'destination': destination,
        'description': description,
        'startDate': DateFormat('dd-MM-yyyy').format(_startDate!),
        'endDate': DateFormat('dd-MM-yyyy').format(_endDate!),
        'owner': user.email,
        'members': [user.email],
      });

      Navigator.pop(context);
    }
  }

  Future<void> _pickStartDate() async {
    DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (selected != null) {
      setState(() {
        _startDate = selected;
      });
    }
  }

  Future<void> _pickEndDate() async {
    DateTime? selected = await showDatePicker(
      context: context,
      initialDate: _startDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (selected != null) {
      setState(() {
        _endDate = selected;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Group'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _groupNameController,
                decoration: InputDecoration(labelText: 'Group Name'),
              ),
              TextField(
                controller: _destinationController,
                decoration: InputDecoration(labelText: 'Destination'),
              ),
              TextField(
                controller: _descriptionController,
                maxLines: 3,
                decoration: InputDecoration(labelText: 'Description (optional)'),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _startDate == null
                          ? 'Select Start Date'
                          : 'Start Date: ${DateFormat('dd-MM-yyyy').format(_startDate!)}',
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: _pickStartDate,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      _endDate == null
                          ? 'Select End Date'
                          : 'End Date: ${DateFormat('dd-MM-yyyy').format(_endDate!)}',
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: _pickEndDate,
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _createGroup,
                child: Text('Create Group'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
