import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

Future<List<String>?> getParties () async {

  var parties = <String>[];

  try {
    var response = await Dio().get("http://192.168.43.129:8000/api/v1/parties");
    var data = response.data;

    for ( var i = 0; i < data.length; i++){
      parties.add(data[i]);
    }
    
    return parties;
  } catch (err) {
    print(err);
    return null;
  }
  
}

List<DropdownMenuItem<String>>? getParties2 () {
  
  var parties;

  Dio().get("http://192.168.43.129:8000/api/v1/parties")
  .then((response) {
    var data = response.data;
    for(var i = 0; i < data.length; i++) {
      data[i] = DropdownMenuItem(
        child: Text(data[i].toString()),
        value: data[i].toString()
      );
    }
    parties = data;
  });

  return parties;
}