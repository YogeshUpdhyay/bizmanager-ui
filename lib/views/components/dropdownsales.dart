import 'package:flutter/material.dart';

class DropDownComponent extends StatelessWidget {

  final chosenValue;
  final changeFunc;
  final future;

  const DropDownComponent({Key? key, this.chosenValue, this.changeFunc, this.future}) : super(key: key);

  DropdownButtonFormField getField (items) {
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
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>?>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.data != null) {
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

          return getField(items);

        } else {
          return getField(null);
        }
      },
    );
  }
}