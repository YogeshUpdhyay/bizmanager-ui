import 'package:bizmanager/controller/parties.dart';
import 'package:flutter/material.dart';

class Sales extends StatefulWidget {

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {

  final parties = getParties();
  var chosenValue;

  void _changeFunc(value) {
    setState(() {
      chosenValue = value;
    });
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
              parties: parties,
              changeFunc: _changeFunc,
              chosenValue: chosenValue,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class DropDownComponent extends StatelessWidget {

  final parties;
  final chosenValue;
  final changeFunc;

  const DropDownComponent({Key? key, this.parties, this.chosenValue, this.changeFunc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text("Parties"),
      items: parties.map<DropdownMenuItem<String>>((party) {
        return DropdownMenuItem<String>(
          child: Text(party),
          value: party,
        );
      }).toList(),
      onChanged: changeFunc,
      value: chosenValue,
    );
  }
}