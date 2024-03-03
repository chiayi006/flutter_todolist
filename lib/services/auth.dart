import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_todolist/services/login_user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

// Firebase物件轉成LoginUser
LoginUser? _userFromFirebaseUser(User? user) {
  return user != null ? LoginUser(uid: user.uid) : null;
}

// 登入狀態變動
Stream<LoginUser?> get user {
  return _auth.userChanges().map(_userFromFirebaseUser);
}

// 登入
  Future logInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // 註冊
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // 登出
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
