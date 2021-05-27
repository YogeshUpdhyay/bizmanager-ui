import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget {

  final businessName;

  const AppBarComponent({Key? key, this.businessName}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        businessName,
        style: TextStyle(
          color: Colors.black
        ),
      ),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black)
    );
  }
}