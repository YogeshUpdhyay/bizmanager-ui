import 'package:bizmanager/views/components/textfield.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            TextFieldComponent(
              prefixIcon: Icons.email, 
              labelText: "Email", 
              obsText: false, 
              controller: emailController
            ),
            SizedBox(height: 10.0,),
            MaterialButton(
              onPressed: () {
                print(emailController.text);
                // Navigator.pushNamed(context, "/resetpass");
              },
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          fontFamily: "OpenSans",
                          fontSize: 20,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              color: Colors.orangeAccent,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            )
          ],
        )
      ),
    );
  }
}