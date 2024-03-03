import 'package:flutter/material.dart';
import 'package:flutter_todolist/screens/homepage.dart';
import 'package:flutter_todolist/services/authenticate.dart';
import 'package:flutter_todolist/services/login_user.dart';
import 'package:flutter_todolist/services/login_user_binder.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key, required this.toggleView}) : super(key: key);
  final Function toggleView;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<LoginUser>(
      stream: LoginUserBinder.of(context)?.value, 
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Authenticate();
        } else {
          return HomePage(toggleView: toggleView);
        }
      },
    );
  }
}
