import 'package:flutter/material.dart';

class BottomAppBarComponent extends StatelessWidget {

  final currentIndex;
  final onChangeFunc;

  const BottomAppBarComponent({
    Key? key, 
    this.currentIndex, 
    this.onChangeFunc
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.grey,
      unselectedItemColor: Colors.black,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: onChangeFunc,
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