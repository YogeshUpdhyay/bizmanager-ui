import 'package:bizmanager/controller/parties.dart';
import 'package:bizmanager/views/components/daterangesales.dart';
import 'package:bizmanager/views/components/dropdownsales.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Purchase extends StatefulWidget {
  @override
  _PurchaseState createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {

  // drop down 
  var chosenValue;
  var _future;
  void _changeFunc(value) {
    setState(() {
      chosenValue = value;
    });
  }

  // date range comp
  // date range picker
  var _startDate;
  var _endDate;
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    print("${args.value.startDate} to ${args.value.endDate}");
    setState(() {
      _startDate = args.value.startDate;
      _endDate = args.value.endDate;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _future = getParties();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
        child: Column(
          children: [
            SizedBox(height: 10.0,),
            DropDownComponent(
              changeFunc: _changeFunc, 
              chosenValue: chosenValue, 
              future: _future,
            ),
            SizedBox(height: 10.0,),
            DateRangeComp(
              endDate: _endDate, 
              startDate: _startDate,
              onSelectionChanged: _onSelectionChanged,
              buttonColor: Colors.orangeAccent
            )
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.orangeAccent,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(Icons.add),
            label: "Add Purchase",
            onTap: () => print("Add Purchases"),
            backgroundColor: Colors.green
          ),
          SpeedDialChild(
            child: Icon(Icons.payment),
            label: "Payment Out",
            onTap: () => print("payment"),
            backgroundColor: Colors.blue
          ),
          SpeedDialChild(
            child: Icon(Icons.upload),
            label: "Buy Return",
            onTap: () => print("Buy return"),
            backgroundColor: Colors.red
          ),
          SpeedDialChild(
            child: Icon(Icons.picture_as_pdf),
            label: "Export",
            onTap: () => print("export to pdf"),
            backgroundColor: Colors.orangeAccent
          )
        ],
      ),
    );
  }
}