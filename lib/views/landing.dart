import 'package:flutter/material.dart';

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
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.cover,
                    width: size.width*0.8,
                  ),
                  SizedBox(height: 20.0,),
                  MaterialButton(
                    onPressed: () => Navigator.pushNamed(context, "/login"),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                    color: Colors.deepOrangeAccent,
                  )
                ]
              ),
            ),
          ),
        ],
      )
    );
  }
}