import 'package:flutter/material.dart';
import 'package:flutter_todolist/screens/signin.dart';
import 'package:flutter_todolist/services/auth.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key, required this.toggleView
  });
  final Function toggleView;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final AuthService _authService = AuthService();

    return Scaffold(
      appBar: AppBar(
        title: Text('TodoList'),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () async {
              await _authService.signOut();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SignIn(
                            toggleView: widget.toggleView,
                          )));
            },
            icon: Icon(Icons.person),
            label: Text('登出'),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
