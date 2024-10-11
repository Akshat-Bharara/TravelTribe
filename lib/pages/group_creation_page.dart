import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:traveltribe/bloc/groups/groups_bloc.dart';
import 'package:traveltribe/models/user_model.dart';

@RoutePage()
class GroupCreationPage extends StatefulWidget {
  final UserModel user;
  final GroupsBloc bloc;

  const GroupCreationPage({super.key, required this.user, required this.bloc});

  @override
  State<GroupCreationPage> createState() => _GroupCreationPageState();
}

class _GroupCreationPageState extends State<GroupCreationPage> {
  final _groupNameController = TextEditingController();
  final _destinationController = TextEditingController();
  final _descriptionController = TextEditingController();

  DateTime? _startDate;
  DateTime? _endDate;

  void _createGroup(BuildContext context) async {
    String groupName = _groupNameController.text.trim();
    String destination = _destinationController.text.trim();
    String description = _descriptionController.text.trim();

    if (groupName.isNotEmpty &&
        destination.isNotEmpty &&
        _startDate != null &&
        _endDate != null) {
      widget.bloc.add(
        GroupsEvent.createGroup(
          groupName,
          destination,
          description,
          _startDate!,
          _endDate!,
          widget.user.username,
        ),
      );
      AutoRouter.of(context).maybePop();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill all fields'),
        ),
      );
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
        centerTitle: true,
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
                decoration:
                    InputDecoration(labelText: 'Description (optional)'),
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
              Builder(
                builder: (context) => ElevatedButton(
                  onPressed: () => _createGroup(context),
                  child: Text('Create Group'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
