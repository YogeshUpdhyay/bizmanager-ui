import 'package:bizmanager/colors.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.email_rounded),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))
              ),
            ),
          )
        ],
      ),
    );
  }
}