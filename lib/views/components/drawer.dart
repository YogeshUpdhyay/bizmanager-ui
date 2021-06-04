import 'package:bizmanager/controller/business.dart';
import 'package:bizmanager/controller/user.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {

  final currentUser = getCurrentUser();
  final businesses = getBusinesses();

  @override
  Widget build(BuildContext context) {

    List<Widget> drawerElements = [
      DrawerHeader(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                currentUser.avatar
              )
            ),
            SizedBox(height: 10.0,),
            Text(
              currentUser.userName, 
              style: TextStyle(
                fontFamily: "OpenSans", 
                fontWeight: FontWeight.bold, 
                fontSize: 20
              ),
            ),
            SizedBox(height: 5.0,),
            Text(
              currentUser.email, 
              style: TextStyle(
                fontFamily: "OpenSans", 
                color: Colors.black.withOpacity(0.8)
              )
            )
          ],
        )
      ),
      SizedBox(height: 10.0,),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("Logout", style: TextStyle(fontFamily: "OpenSans", fontSize: 16),),
        onTap: () => Navigator.pushReplacementNamed(context, "/")
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("Settings", style: TextStyle(fontFamily: "OpenSans", fontSize: 16)),
        onTap: () => print("settings"),
      ),
      SizedBox(height: 10.0,),
      Text(
        "Business",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "OpenSans"
        ),
      ),
    ];

    for (var i = 0; i < businesses.length; i++) {
      drawerElements.addAll([
        ListTile(
          leading: Icon(Icons.business_center_rounded),
          title: Text(businesses[i].businessName, style: TextStyle(fontSize: 16, fontFamily: "OpenSans")),
          trailing: PopupMenuButton(
            onSelected: (Map<String, dynamic> action) {
              print(action);
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: Text("Manage Employees"), 
                value: {
                  'type': 'manage',
                  'id': businesses[i].id
                }
              ),
              PopupMenuItem(
                child: Text("Edit Details"), 
                value: {
                  'type': 'edit-busi',
                  'id': businesses[i].id
                }
              ),
              PopupMenuItem(
                child: Text("Delete"), 
                value: {
                  'type': 'delete',
                  'id': businesses[i].id
                }
              ),
            ], 
          ),
          onTap: () => print(businesses[i].id),
        ),
      ]);
    }

    drawerElements.addAll([
      Divider(color: Colors.black, thickness: 2, indent: 10.0, endIndent: 10.0,),
      ListTile(
        leading: Icon(Icons.add),
        title: Text(
          "Add new business", 
          style: TextStyle(
            fontFamily: "OpenSans", 
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
        onTap: () => Navigator.pushNamed(context, "/addbusiness"),
      )
    ]);    

    return Drawer(
      child: Column(
        children: drawerElements,
      ),
    );
  }
}
