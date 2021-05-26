import 'package:bizmanager/views/components/textfield.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Buisness();
  }
}

class Buisness extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(),
      drawerScrimColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size(size.width, size.height*0.07),
        child: AppBarComponent(),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 20.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () => print("Party"), icon: Icon(Icons.add_business)),
            IconButton(onPressed: () => print("Add Sales"), icon: Icon(Icons.note_add)),
            IconButton(onPressed: () => print("Add Purchase"), icon: Icon(Icons.request_quote)),
            IconButton(onPressed: () => print("Accounts"), icon: Icon(Icons.groups))
          ],
        ),
      ),
    );
  }
}

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Buisness",
        style: TextStyle(
          color: Colors.black
        ),
      ),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black)
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, (size.height*0.4).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Register",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 32,
                    fontWeight: FontWeight.bold 
                  ),
                ),
                SizedBox(height: 10.0,),
                TextFieldComponent(prefixIcon: Icons.verified_user, labelText: "Username", obsText: false),
                SizedBox(height: 10.0,),
                TextFieldComponent(prefixIcon: Icons.email_rounded, labelText: "Email", obsText: false),
                SizedBox(height: 10.0,),
                TextFieldComponent(prefixIcon: Icons.lock, labelText: "Password", obsText: true),
                SizedBox(height: 10.0,),
                MaterialButton(
                  onPressed: () {}, 
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontFamily: "OpenSans",
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.black,
                  height: size.height*0.06,
                  minWidth: size.width*0.9,
                  elevation: 10.0,
                ),
                SizedBox(height: 40,),
                Divider(color: Colors.black, thickness: 2,),
                TextButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, "/login"), 
                  child: Text("Already have an account? Login")
                )

              ],
            ),
          )
        ],
      )
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
            
  Path path_0 = Path();
  path_0.moveTo(size.width,0);
  path_0.lineTo(0,0);
  path_0.lineTo(size.width*0.7435417,size.height*0.9560000);
  path_0.lineTo(size.width,0);
  path_0.close();

  Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
  paint_0_fill.color = Colors.yellow;
  canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomPaint(
              size: Size(size.width, (size.height*0.4).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 10.0,),
                TextFieldComponent(prefixIcon: Icons.email_rounded, labelText: "Email", obsText: false),
                SizedBox(height: 10.0,),
                TextFieldComponent(prefixIcon: Icons.lock, labelText: "Password", obsText: true),
                SizedBox(height: 10.0),
                MaterialButton(
                  onPressed: () {}, 
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontFamily: "OpenSans",
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                  color: Colors.black,
                  height: size.height*0.06,
                  minWidth: size.width*0.9,
                  elevation: 10.0,

                ),
                SizedBox(height: 40,),
                Divider(color: Colors.black, thickness: 2,),
                TextButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, "/register"), 
                  child: Text("Don't have an account? Register")
                )
              ],
            ),
          )
        ],
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

