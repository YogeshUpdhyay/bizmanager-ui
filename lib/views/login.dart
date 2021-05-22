import 'package:bizmanager/views/components/textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "bizmanger.co",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontFamily: "OpenSans"
          ),
        ),
      ),
    );
  }
}