import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  void login(BuildContext context) async {
    await FirebaseAuth.instance.signInAnonymously();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Enter App"),
          onPressed: () => login(context),
        ),
      ),
    );
  }
}
