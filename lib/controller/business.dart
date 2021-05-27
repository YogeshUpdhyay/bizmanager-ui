import 'package:bizmanager/models/business.dart';
import 'package:dio/dio.dart';

List<dynamic> getBusinesses () {
  List<dynamic> res = [];

  Dio().get('http://10.0.2.2:8000/api/v1/businesses')
  .then((response) => {
    for (var i = 0; i < response.data.length; i++) {
      res.add(BusinessModel.fromJson(response.data[i]))
    }
  })
  .catchError((error) => print(error));

  return res;
}