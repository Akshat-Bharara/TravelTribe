// lib/models/group.dart

class Group {
  String id;
  String ownerId;
  String groupName;
  String destination;
  DateTime startDate;
  DateTime endDate;
  List<String> members;

  Group({
    required this.id,
    required this.ownerId,
    required this.groupName,
    required this.destination,
    required this.startDate,
    required this.endDate,
    required this.members,
  });

  factory Group.fromMap(Map<String, dynamic> data, String documentId) {
    return Group(
      id: documentId,
      ownerId: data['ownerId'],
      groupName: data['groupName'],
      destination: data['destination'],
      startDate: DateTime.parse(data['startDate']),
      endDate: DateTime.parse(data['endDate']),
      members: List<String>.from(data['members']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ownerId': ownerId,
      'groupName': groupName,
      'destination': destination,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'members': members,
    };
  }
}
