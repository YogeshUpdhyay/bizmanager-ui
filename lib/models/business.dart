import 'package:bizmanager/models/creator.dart';

class BusinessModel {
  final id;
  final businessName;
  final businessAddress;
  final businessEmail;
  final businessNos;
  final businessLogo;
  final businessGSTIN;

  BusinessModel({
    required this.id, 
    required this.businessName, 
    this.businessAddress, 
    this.businessEmail, 
    this.businessNos, 
    this.businessLogo, 
    this.businessGSTIN
  });

  BusinessModel.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      businessName = json['businessName'],
      businessAddress = json['businessAddress'],
      businessEmail = json['businessEmail'],
      businessNos = json['businessNos'],
      businessLogo = json['businessLogo'],
      businessGSTIN = json['businessGSTIN'];


  Map<String, dynamic> toJson() => {
    'id' : id,
    'businessName' : businessName,
    'businessAddress' : businessAddress,
    'businessEmail' : businessEmail,
    'businessNos' : businessNos,
    'businessLogo' : businessLogo,
    'businessGSTIN' : businessGSTIN
  };

  
}

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);


class Welcome {
  Welcome({
    required this.id,
    required this.name,
    required this.address,
    required this.contactNo,
    required this.creator,
    required this.employess,
  });

  String id;
  String name;
  String address;
  String contactNo;
  Creator creator;
  List<dynamic> employess;

  Welcome.fromJson(Map<String, dynamic> json)
    : id = json["id"],
      name = json["name"],
      address = json["address"],
      contactNo = json["contact_no"],
      creator = Creator.fromJson(json["creator"]),
      employess = List<dynamic>.from(json["employess"].map((x) => x));

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "address": address,
    "contact_no": contactNo,
    "creator": creator.toJson(),
    "employess": List<dynamic>.from(employess.map((x) => x)),
  };
}


