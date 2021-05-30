import 'package:bizmanager/views/parties.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

Future<List<DropdownMenuItem<String>>?> getParties()  async {
  
  try {
    var parties = <DropdownMenuItem<String>>[];
    var dio = Dio();
    var response = await dio.get("http://10.0.2.2:8000/api/v1/parties");
    
    var data = response.data;
    
    for (var i = 0; i < data.length; i++) {
      parties.add(
        DropdownMenuItem<String>(
          child: Text(data[i]),
          value: data[i],
        )
      );
    }
    print(parties);
    return parties;
  } catch (error) {
    return null;
  }
}

class Sales extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  
  var parties;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getParties()
    .then((value) => {
      // print(value),
      setState(() => parties = value),
      print("parties ${parties}")
    });
  }

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width*0.05),
          child: Column(
            children: [
              SizedBox(height: 10.0,),
              DropdownButton(
                value: "Party1",
                items: parties,
                hint: Text("Parties",  style: TextStyle(fontFamily: "OpenSans"),),
                isExpanded: true,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }

}