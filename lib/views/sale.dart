import 'package:bizmanager/controller/parties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'components/daterangesales.dart';
import 'components/dropdownsales.dart';

class Sales extends StatefulWidget {

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {

  // drop down menu
  var chosenValue;
  var _future;
  void _changeFunc(value) {
    setState(() {
      chosenValue = value;
    });
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            )
          ],
        ),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.yellow,
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: Icon(Icons.add),
            label: "Add Sale",
            onTap: () => print("Add Sales"),
            backgroundColor: Colors.green
          ),
          SpeedDialChild(
            child: Icon(Icons.payment),
            label: "Payment In",
            onTap: () => print("payment"),
            backgroundColor: Colors.blue
          ),
          SpeedDialChild(
            child: Icon(Icons.upload),
            label: "Sale Return",
            onTap: () => print("Sale return"),
            backgroundColor: Colors.red
          ),
        ],
      )
    );
  }
}
