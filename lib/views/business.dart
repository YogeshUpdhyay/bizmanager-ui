import 'package:bizmanager/views/components/textfield.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFieldComponent(prefixIcon: Icons.business, labelText: "Name", obsText: false),
            SizedBox(height: 10.0,),
            TextFieldComponent(prefixIcon: Icons.place, labelText: "Address", obsText: false),
            SizedBox(height: 10.0),
            TextFieldComponent(prefixIcon: Icons.email, labelText: "Email", obsText: false),
            SizedBox(height: 10.0,),
            TextFieldComponent(prefixIcon: Icons.description, labelText: "GST", obsText: false),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Contact Numbers",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded))
              ],
            ),
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
                IconButton(onPressed: () {}, icon: Icon(Icons.add_box_rounded))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BusinessCard extends StatelessWidget {

  final businessName;
  final businessAddress;
  final businessEmail ;
  final businessNos;
  final businessLogo;

  BusinessCard({
    this.businessName, 
    this.businessAddress, 
    this.businessEmail, 
    this.businessNos, 
    this.businessLogo
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey[70],
      elevation: 10.0,
    );
  }

}