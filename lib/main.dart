import 'package:bizmanager/views/business.dart';
import 'package:bizmanager/views/dashboard.dart';
import 'package:bizmanager/views/landing.dart';
import 'package:bizmanager/views/login.dart';
import 'package:bizmanager/views/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bizmanager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => Landing(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/dashboard': (context) =>  Dashboard(),
        '/addbusiness': (context) => Business()
      },
    );
  }
}
