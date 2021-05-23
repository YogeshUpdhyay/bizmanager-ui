import 'package:bizmanager/views/login.dart';
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
        primarySwatch: Colors.grey
      ),
      // initialRoute: "/",
      // routes: {
      //   '/': (context) => Login()
      // },
      home: MainView(),
    );
  }
}
