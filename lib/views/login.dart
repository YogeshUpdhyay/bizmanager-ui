import 'package:bizmanager/views/components/textfield.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Login();
  }
}

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width*0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width*0.6,
              child: Image.asset(
                "assets/images/logo.png"
              ),
            ),
            TextFieldComponent(
              prefixIcon: Icons.email, 
              labelText: "Email", 
              obsText: false
            ),
            SizedBox(
              height: 10,
            ),
            TextFieldComponent(
              prefixIcon: Icons.password_rounded, 
              labelText: "Password", 
              obsText: true
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {  },
              child: Text(
                "Submit",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "OpenSans"
                ),
              ),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class Landing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/images/backdrop_upper.gif"),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/backdrop_lower.gif")
          ),
          Center(
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
              width: size.width*0.8,
            )
          ), 
        ],
      )
    );
  }
}