import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_todolist/services/auth.dart';
import 'package:flutter_todolist/services/authenticate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_todolist/services/login_user.dart';
import 'package:flutter_todolist/services/login_user_binder.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginUserBinder(
      value: AuthService().user!.transform(
        StreamTransformer.fromHandlers(handleData: (LoginUser? user, sink) {
          if (user != null) {
            sink.add(user);
          }
        }),
      ),
      child: MaterialApp(home: Authenticate()),
    );
  }
}

