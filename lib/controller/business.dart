import 'package:bizmanager/models/business.dart';
import 'package:dio/dio.dart';

List<dynamic> getBusinesses () {
  List<dynamic> res = [];

  Dio().get('http://192.168.43.129:8000/api/v1/businesses')
  .then((response) => {
    for (var i = 0; i < response.data.length; i++) {
      res.add(BusinessModel.fromJson(response.data[i]))
    }
  })
  .catchError((error) => print(error));

  return res;
}