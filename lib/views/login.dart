import 'package:bizmanager/views/components/textfield.dart';
import 'package:flutter/material.dart';
import 'components/customPaint.dart';

class Login extends StatelessWidget {

  final emailController = new TextEditingController();
  final pswdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomPaint(
              size: Size(size.width, (size.height*0.4).toDouble()),
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
                TextFieldComponent(
                  prefixIcon: Icons.email_rounded, 
                  labelText: "Email", 
                  obsText: false,
                  controller: emailController,
                ),
                SizedBox(height: 10.0,),
                TextFieldComponent(
                  prefixIcon: Icons.lock, 
                  labelText: "Password", 
                  obsText: true,
                  controller: pswdController,
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  onPressed: () {
                    print(emailController.text);
                    print(pswdController.text);
                    Navigator.pushReplacementNamed(context, "/dashboard");
                  }, 
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
                  onPressed: () => Navigator.pushNamed(context, "/forgotpass"), 
                  child: Text("Forgot Password", style: TextStyle(fontFamily: "OpenSans", color: Colors.black),),
                ),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, "/register"), 
                  child: Text("Don't have an account? Register", style: TextStyle(fontFamily: "OpenSans", color: Colors.black),)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



