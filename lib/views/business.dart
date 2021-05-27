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

class AddEmployee extends StatelessWidget {
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

    final size = MediaQuery.of(context).size;

    return Card(
      shadowColor: Colors.grey[70],
      elevation: 10.0,
      color: Colors.black,
      child: Container(
        height: size.height*0.3,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bizcard2.png"),
            fit: BoxFit.fill
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  businessName, 
                  style: TextStyle(
                    fontFamily: "OpenSans", 
                    fontSize: 24, 
                    color: Colors.white,
                    fontWeight: FontWeight.w100
                  ),
                ),
                SizedBox(
                  width: size.width*0.4,
                  child: Text(
                    businessAddress,
                    style: TextStyle(
                      fontFamily: "OpenSans",
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  "Email: $businessEmail",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Contact No.: $businessNos",
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Container(
              child: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                  businessLogo
                )
              ),
            )
          ],
        ),
      ),
    );
  }

}