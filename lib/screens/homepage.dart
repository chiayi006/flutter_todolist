import 'package:flutter/material.dart';
import 'package:flutter_todolist/services/auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TodoList'),
        actions: <Widget>[
          TextButton.icon(onPressed: () => _authService.signOut(), icon: Icon(Icons.person), label: Text('登出'))
        ],
      ),
      body: Container(),
    );
  }
}