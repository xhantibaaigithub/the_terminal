import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:terminal_mobile_app/user/user_model.dart';

class AuthState extends ChangeNotifier {
  bool _loggedIn = false;
  User? _loggedInUser;

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AuthState() {
    _init();
  }

  Future<void> _init() async {
    forceRefreshToken();
    auth.userChanges().listen((user) {
      (user != null) ? _loggedIn = true : _loggedIn = false;
      // _loggedInUser = user;
      notifyListeners();
    });
  }

  // Forces firebase token refresh
  Future<void> forceRefreshToken() async {
    User? user = auth.currentUser;

    if (user != null) {
      try {
        await user.getIdToken(true);
      } catch (e) {
        print('Error refreshing token: $e');
      }
    } else {
      print('User not signed in.');
    }
  }

  User? get getLoggedInUser => auth.currentUser;

  Future<User?> registerUser(UserModel newUserRequest) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: newUserRequest.email, password: newUserRequest.password);

      await auth.currentUser?.updateDisplayName(newUserRequest.displayName);
      await auth.currentUser?.updatePhotoURL(newUserRequest.profilePhotoUrl);

      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'firstName': newUserRequest.firstName,
        'lastName': newUserRequest.lastName,
        'email': newUserRequest.email,
        'displayName': newUserRequest.displayName,
        'dateOfBirth': newUserRequest.dob,
        'scamtoPin': newUserRequest.scamtoPin,
        'profilePhotoUrl': newUserRequest.profilePhotoUrl,
        'coverPhotoUrl': newUserRequest.coverPhotoUrl,
        'estratiniFollowers': newUserRequest.estratiniFollowers,
        'estratiniFollowing': newUserRequest.estratiniFollowing,
        'scamtoContacts': newUserRequest.scamtoContacts,
        'blockedUsers': newUserRequest.blockedUsers
      });

      return userCredential.user;
    } catch (e) {
      debugPrint('Error during registration: $e');
      return null;
    }
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential.user;

    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      } else {
        print('Error: ${e.message}');
      }
      return null;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  bool get loggedIn => _loggedIn;

  User? get loggedInUser => _loggedInUser;

}
