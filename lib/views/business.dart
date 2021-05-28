import 'package:bizmanager/views/components/textfield.dart';
import 'package:flutter/material.dart';

import 'components/addEmployee.dart';
import 'components/businessCard.dart';

class Business extends StatefulWidget {
  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        actions: [
          MaterialButton(
            onPressed: () => print("Save"),
            child: Row(children: [
              Icon(Icons.save),
              SizedBox(width: 5.0,),
              Text('Save'),
            ]),
          )
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black)
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.0,),
              BusinessCard(
                businessAddress: "1608 Amphitheatre, Park Avenue.",
                businessName: "Google",
                businessEmail: "google@google.com",
                businessLogo: "https://blog.hubspot.com/hubfs/image8-2.jpg",
                businessNos: "022 1234 5698",
              ),
              SizedBox(height: 10.0,),
              Text(
                "Business",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
              SizedBox(height: 10.0,),
              TextFieldComponent(prefixIcon: Icons.business, labelText: "Name", obsText: false),
              SizedBox(height: 10.0,),
              TextFieldComponent(prefixIcon: Icons.place, labelText: "Address", obsText: false),
              SizedBox(height: 10.0),
              TextFieldComponent(prefixIcon: Icons.email, labelText: "Email", obsText: false),
              SizedBox(height: 10.0,),
              TextFieldComponent(prefixIcon: Icons.description, labelText: "GST", obsText: false),
              SizedBox(height: 10.0,),
              TextFieldComponent(prefixIcon: Icons.phone, labelText: "Contact No.", obsText: false),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Employees",
                    style: TextStyle(
                      fontFamily: "OpenSans",
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  IconButton(
                    onPressed: () => showModalBottomSheet(
                      context: context, 
                      builder: (builder) {
                        return AddEmployee();
                      }
                    ), 
                    icon: Icon(Icons.add_box_rounded)
                  )
                ],
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "John Doe"
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => print("Employee deleted"),
                ),
                onTap: () => print("Employee Profile"),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "John Doe"
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => print("Employee deleted"),
                ),
                onTap: () => print("Employee Profile"),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "John Doe"
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => print("Employee deleted"),
                ),
                onTap: () => print("Employee Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

