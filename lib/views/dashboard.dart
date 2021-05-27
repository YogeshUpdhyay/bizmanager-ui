import 'package:flutter/material.dart';
import 'components/appbar.dart';
import 'components/bottomAppBar.dart';
import 'components/drawer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

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
      bottomNavigationBar: BottomAppBarComponent(),
    );
  }

}