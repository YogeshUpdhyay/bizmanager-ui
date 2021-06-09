import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Parties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        child: Icon(Icons.menu),
        children: [
          SpeedDialChild(
            label: "Export to pdf",
            child: Icon(Icons.picture_as_pdf_outlined)
          )
        ],
      ),
    );
  }
}