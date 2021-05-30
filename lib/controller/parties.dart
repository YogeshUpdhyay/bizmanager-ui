import 'package:dio/dio.dart';

List<String> getParties () {

  var parties = <String>[];
  var data;

  Dio().get("http://192.168.43.129:8000/api/v1/parties")
  .then((res) => {

    data = res.data,
    print("data ${data} ${data.runtimeType} ${data.length}"),

    for (var i = 0; i < data.length; i++) {
      parties.add(data[i].toString())
    },

  });

  return parties;
}