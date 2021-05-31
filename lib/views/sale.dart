import 'package:bizmanager/controller/parties.dart';
import 'package:bizmanager/views/components/textfield.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class Sales extends StatefulWidget {

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {

  var chosenValue;
  var items = getParties2();
  void _changeFunc(value) {
    setState(() {
      chosenValue = value;
    });
  }

  var _startDate;
  var _endDate;

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // TODO: implement your code here
    print("${args.value.startDate} to ${args.value.endDate}");
    setState(() {
      _startDate = args.value.startDate;
      _endDate = args.value.endDate;
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
            dropDownComp(changeFunc: _changeFunc, chosenValue: chosenValue),
            SizedBox(height: 10.0,),
            // TextFieldComponent(prefixIcon: Icons.date_range, labelText: labelText, obsText: obsText)
            Row(
              children: [
                Text(_startDate != null ? DateFormat('yyyy-MM-dd').format(_startDate) : "Start Date"),
                Icon(Icons.arrow_right),
                Text(_endDate != null ? DateFormat('yyyy-MM-dd').format(_endDate) : "End Date"),
                IconButton(
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    isDismissible: true,
                    builder: (context) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
                        child: SizedBox(
                          height: size.height*0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 10.0),
                              SfDateRangePicker(
                                onSelectionChanged: _onSelectionChanged,
                                selectionMode: DateRangePickerSelectionMode.range,
                              ),
                              MaterialButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text(
                                  "Close",
                                  style: TextStyle(
                                    fontFamily: "OpenSans",
                                  ),
                                )
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  ),
                  icon: Icon(Icons.date_range),
                ),
              ],
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


class dropDownComp extends StatelessWidget {

  var items;
  final changeFunc;
  final chosenValue;

  dropDownComp({Key? key, this.changeFunc, this.chosenValue}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    items =  getParties2();
    print(items);

    return items != null ? DropdownButtonFormField(
      items: items,
      // hint: Text("Parties"),
      onChanged: changeFunc,
      value: chosenValue,
      decoration: InputDecoration(
        labelText: "Parties",
        prefixIcon: Icon(Icons.business, color: Colors.black),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Colors.black)
        ),
        labelStyle: TextStyle(
            color: Colors.black
          ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Colors.black)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: Colors.black)
        ),
      ),
    ) : CircularProgressIndicator();
  }
}

class DropDownComponent extends StatelessWidget {

  final chosenValue;
  final changeFunc;

  const DropDownComponent({Key? key, this.chosenValue, this.changeFunc}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>?>(
              future: getParties(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.data != null) {
                    var data = snapshot.data;
                    List<DropdownMenuItem<String>> items = [];

                    for(var i = 0; i <  data!.length ; i++) {
                      items.add(
                        DropdownMenuItem(
                          child: Text(data[i]),
                          value: data[i].toString(),
                        )
                      );
                    }

                    return DropdownButtonFormField(
                      items: items,
                      // hint: Text("Parties"),
                      onChanged: changeFunc,
                      value: chosenValue,
                      decoration: InputDecoration(
                        labelText: "Parties",
                        prefixIcon: Icon(Icons.business, color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                        labelStyle: TextStyle(
                            color: Colors.black
                          ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                      ),
                    );

                  } else {
                    return Center(child: CircularProgressIndicator(),);
                  }
                } else {
                  return Center(child: CircularProgressIndicator(),);
                }
              },
            );
  }
}