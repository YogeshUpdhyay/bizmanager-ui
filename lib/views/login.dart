import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 36.0,
              fontFamily: 'OpenSans',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('bizmanager.co'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}