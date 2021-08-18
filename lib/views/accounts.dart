import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class Accounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DropdownSearch<String>(
            mode: Mode.MENU,
            showSelectedItem: true,
            items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
            label: "Accounts",
            hint: "country in menu mode",
            popupItemDisabled: (String s) => s.startsWith('I'),
            onChanged: print,
          ),
        ],
      ),
    );
  }
}