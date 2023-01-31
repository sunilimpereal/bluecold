import 'package:bluecold/authentication/screens/login.dart';
import 'package:bluecold/theme/theme1.dart';
import 'package:bluecold/utils/ApiUrls.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'utils/shared_preferences.dart';

late FirebaseAuth firebaseAuth;
ApiUrls urls = ApiUrls();
SharedPref sharedPref = SharedPref();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await sharedPref.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlueCold',
      theme: theme1,
      home: const LoginScreen(),
    );
  }
}
