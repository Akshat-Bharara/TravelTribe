import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:traveltribe/constants/app_failure.dart';
import 'package:traveltribe/models/user_model.dart';

class Authenticator extends ChangeNotifier {
  static final _db = FirebaseFirestore.instance;
  static final _auth = FirebaseAuth.instance;

  Authenticator() {
    _auth.authStateChanges().listen((_) {
      notifyListeners();
    });
  }

  Future<void> signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (exception) {
      throw switch (exception.code) {
        'user-not-found' ||
        'wrong-password' =>
          AppFailure.incorrectEmailOrPassword(),
        _ => AppFailure.unknown(),
      };
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw AppFailure.unknown();
    }
  }

  Future<void> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      final res = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _db.collection('users').doc(res.user!.uid).set({'username': username});
    } on FirebaseAuthException catch (exception) {
      switch (exception.code) {
        case 'email-already-in-use':
          throw AppFailure.emailAlreadyUsed();
        default:
          throw AppFailure.unknown();
      }
    }
  }

  Future<bool> isUserNameAvailable(String username) async {
    return (await _db
            .collection('users')
            .where('username', isEqualTo: username)
            .get())
        .docs
        .isEmpty;
  }

  Future<UserModel?> get currentUser async {
    if (_auth.currentUser == null) {
      return null;
    }
    final data =
        (await _db.collection('users').doc(_auth.currentUser!.uid).get())
            .data();
    if (data == null) {
      return null;
    }
    return UserModel.fromJson({
      ...data,
      'id': _auth.currentUser!.uid,
      'email_verified': _auth.currentUser!.emailVerified,
    });
  }

  bool get isAuthenticated => _auth.currentUser != null;
}
