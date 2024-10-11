import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:traveltribe/constants/app_failure.dart';
import 'package:traveltribe/models/expense.dart';
import 'package:traveltribe/models/group.dart';

class DatabaseProvider {
  final _db = FirebaseFirestore.instance;

  Future<Group> getGroup(String groupId) async {
    try {
      final groupDoc = await _db.collection('groups').doc(groupId).get();
      return Group.fromJson({
        ...groupDoc.data()!,
        'id': groupDoc.id,
      });
    } catch (e) {
      throw AppFailure.unknown();
    }
  }

  Future<Group> createGroup({
    required String groupName,
    required String destination,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String owner,
  }) async {
    final res = await _db.collection('groups').add({
      'groupName': groupName,
      'destination': destination,
      'description': description,
      'startDate': DateFormat('dd-MM-yyyy').format(startDate),
      'endDate': DateFormat('dd-MM-yyyy').format(endDate),
      'owner': owner,
      'members': [owner],
      'expenses': [],
    });
    return Group.fromJson({
      ...(await res.get()).data()!,
      'id': res.id,
    });
  }

  Future<void> addGroupMember(String groupId, String member) async {
    await _db.collection('groups').doc(groupId).update({
      'members': FieldValue.arrayUnion([member]),
    });
  }

  Future<void> addGroupExpense(
    String groupId,
    Expense expense,
  ) async {
    await _db.collection('groups').doc(groupId).update({
      'expenses': FieldValue.arrayUnion([expense.toJson()]),
    });
  }

  Future<void> updateGroup(Group group) async {
    await _db.collection('groups').doc(group.id).update(group.toJson());
  }

  Future<void> finalizeTrip(String groupId) async {
    await _db.collection('groups').doc(groupId).update({
      'tripFinalized': true,
    });
  }

  Future<bool> isUsernameAvailable(String username) async {
    return (await _db
            .collection('users')
            .where('username', isEqualTo: username)
            .get())
        .docs
        .isEmpty;
  }
}
