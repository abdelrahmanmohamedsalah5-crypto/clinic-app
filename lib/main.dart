import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // تم إيقاف الفايربيز مؤقتاً عشان التطبيق يفتح بدون شاشة بيضاء
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clinic App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), 
    );
  }
}
