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