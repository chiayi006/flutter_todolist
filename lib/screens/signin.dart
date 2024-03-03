import 'package:flutter/material.dart';
import 'package:flutter_todolist/screens/homepage.dart';
import 'package:flutter_todolist/services/auth.dart';
import 'package:flutter_todolist/shared/decoration.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key, required this.toggleView});
  final Function toggleView;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Sign In'),
        actions: <Widget>[
          TextButton.icon(
              onPressed: () => widget.toggleView(),
              icon: Icon(Icons.person),
              label: Text('註冊'))
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/images/cat.png'),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                    decoration: textDecoration.copyWith(hintText: '帳號'),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return '請輸入Email';
                      }
                      return null;
                    },
                    onChanged: (val) {
                      setState(() {
                        email = val;
                      });
                    }),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: textDecoration.copyWith(hintText: '密碼'),
                  validator: (val) {
                    if (val == null || val.isEmpty || val.length < 6) {
                      return '請輸入至少6位數密碼';
                    }
                    return null;
                  },
                  obscureText: true,
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),
                SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      print('email: $email');
                      print('password: $password');
                      dynamic result = await _auth.logInWithEmailAndPassword(
                          email, password);
                      print(result);
                      if (result == null) {
                        setState(() {
                          error = 'Could not sign in with those credentials';
                        });
                      } else {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage(toggleView: widget.toggleView,)));
                      }
                    }
                  },
                  child: Text(
                    '登入',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  '$error',
                  style: TextStyle(color: Colors.red, fontSize: 16.0),
                )
              ],
            ),
          )),
    );
  }
}
