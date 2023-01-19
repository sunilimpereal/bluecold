import 'package:bluecold/authentication/screens/login.dart';
import 'package:bluecold/theme/theme1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme1,
      home: const LoginScreen(),
    );
  }
}
