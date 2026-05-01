import 'package:flutter/material.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('تسجيل الدخول')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(labelText: 'البريد الإلكتروني'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: pass,
              decoration: InputDecoration(labelText: 'كلمة المرور'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // انتقال مباشر للصفحة الرئيسية
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('دخول'),
            ),
          ],
        ),
      ),
    );
  }
}
