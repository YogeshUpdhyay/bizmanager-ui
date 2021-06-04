import 'package:bizmanager/views/components/textfield.dart';
import 'package:flutter/material.dart';

class AddEmployee extends StatelessWidget {

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0,),
          Text(
            "Find User",
            style: TextStyle(
              fontFamily: "OpenSans",
              fontSize: 20,
              fontWeight: FontWeight.w100
            ),
          ),
          SizedBox(height: 10.0,),
          TextFieldComponent(
            prefixIcon: Icons.search, 
            labelText: "Username/Email", 
            obsText: false,
            controller: nameController,
          ),
          SizedBox(height: 10.0,),
          ListTile(
            title: Text(
              "John Doe"
            ),
            onTap: () => print("Added Employee"),
          )
        ],
      ),
    );
  }
}

