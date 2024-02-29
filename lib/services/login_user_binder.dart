import 'package:flutter/material.dart';
import 'package:flutter_todolist/services/login_user.dart';

class LoginUserBinder extends InheritedWidget {
  const LoginUserBinder({
    Key? key,
    required this.child,
    required this.value,
  }) : super(key: key, child: child);

  final Widget child;
  final Stream<LoginUser> value;

  static LoginUserBinder? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LoginUserBinder>();
  }

  @override
  bool updateShouldNotify(LoginUserBinder oldWidget) {
    return true;
  }
}
