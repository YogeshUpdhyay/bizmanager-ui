class UserModel {
  final userName;
  final email;
  final avatar;

  UserModel({required this.userName, required this.email, this.avatar});

  UserModel.fromJson(Map<String, dynamic> json)
    : userName = json['userName'],
      email = json['email'],
      avatar = json['avatar'];

  Map<String, dynamic> toJson() => {
    'userName': userName,
    'email': email,
    'avatar': avatar
  };

}