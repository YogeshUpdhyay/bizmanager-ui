import 'package:dio/dio.dart';

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