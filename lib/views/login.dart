import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/images/backdrop_upper.gif"),
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
              width: size.width*0.8,
            )
          )
        ],
      )
    );
  }
}