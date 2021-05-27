import 'package:bizmanager/controller/business.dart';
import 'package:bizmanager/controller/user.dart';
import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {

  final currentUser = getCurrentUser();
  final businesses = getBusinesses();


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
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
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings", style: TextStyle(fontSize: 16)),
            onTap: () => print("settings"),
          ),
          Text(
            "Business",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          ListTile(
            title: Text(businesses[0].businessName)
          )
        ],
      ),
    );
  }
}
