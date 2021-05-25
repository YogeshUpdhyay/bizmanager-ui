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
        primarySwatch: Colors.blue,
        // inputDecorationTheme: InputDecorationTheme(
        //   labelStyle: TextStyle(
        //     color: Colors.black
        //   ),
        //   floatingLabelBehavior: FloatingLabelBehavior.never,
        //   border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        //   enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        //   focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        // )
      ),
      // initialRoute: "/",
      // routes: {
      //   '/': (context) => Login()
      // },
      home: MainView(),
    );
  }
}
