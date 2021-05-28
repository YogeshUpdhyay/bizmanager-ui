import 'package:bizmanager/views/accounts.dart';
import 'package:bizmanager/views/business.dart';
import 'package:bizmanager/views/parties.dart';
import 'package:bizmanager/views/purchase.dart';
import 'package:bizmanager/views/sale.dart';
import 'package:flutter/material.dart';
import 'components/appbar.dart';
import 'components/bottomAppBar.dart';
import 'components/drawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  static List<Widget> _widgetOptions = <Widget>[
    Parties(),
    Purchase(),
    Sales(),
    Accounts()
  ];

  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
  
    return Scaffold(
      drawer: DrawerComponent(),
      drawerScrimColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size(size.width, size.height*0.07),
        child: AppBarComponent(businessName: "Bajrang Coal Depot",),
      ),
      body: _widgetOptions.elementAt(currentIndex),
      bottomNavigationBar: BottomAppBarComponent(
        currentIndex: currentIndex,
        onChangeFunc: _onItemTapped
      ),
    );
  }

}