import 'package:flutter/material.dart';

class BottomAppBarComponent extends StatefulWidget {
  @override
   BottomAppBarComponentState createState() =>  BottomAppBarComponentState();
}

class  BottomAppBarComponentState extends State <BottomAppBarComponent> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.black,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
        setState(() => _currentIndex = value);
      },
      items: [
        BottomNavigationBarItem(
          label: 'Business',
          icon: Icon(Icons.add_business),
        ),
        BottomNavigationBarItem(
          label: 'Purchases',
          icon: Icon(Icons.request_quote),
        ),
        BottomNavigationBarItem(
          label: 'Sales',
          icon: Icon(Icons.description),
        ),
        BottomNavigationBarItem(
          label: 'Accounts',
          icon: Icon(Icons.groups),
        ),
      ],
    );
  }
}