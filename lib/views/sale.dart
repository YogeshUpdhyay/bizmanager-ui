import 'package:bizmanager/controller/parties.dart';
import 'package:flutter/material.dart';

class Sales extends StatefulWidget {

  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {

  // final parties = getParties();
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
            DropDownComponent(changeFunc: _changeFunc, chosenValue: chosenValue,),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.calendar_today)
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