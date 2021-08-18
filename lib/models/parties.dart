
import 'package:bizmanager/models/creator.dart';

class Party {
	Party({
		required this.id,
		required this.name,
		required this.business,
		required this.address,
		required this.contactNo,
		required this.email,
		required this.account,
		required this.type,
	});

	String id;
	String name;
	Business business;
	String address;
	String contactNo;
	String email;
	Account account;
	String type;

	Party.fromJson(Map<String, dynamic> json)
		: id = json["id"],
			name = json["name"],
			business = Business.fromJson(json["business"]),
			address = json["address"],
			contactNo = json["contactNo"],
			email = json["email"],
			account = Account.fromJson(json["account"]),
			type = json["type"];

	Map<String, dynamic> toJson() => {
		"id": id,
		"name": name,
		"business": business.toJson(),
		"address": address,
		"contactNo": contactNo,
		"email": email,
		"account": account.toJson(),
		"type": type,
	};
}

class Account {
	Account({
		required this.ifsc,
		required this.acNo,
	});

	String ifsc;
	String acNo;

	Account.fromJson(Map<String, dynamic> json)
		:	ifsc = json["ifsc"],
			acNo = json["ac_no"];

	Map<String, dynamic> toJson() => {
		"ifsc": ifsc,
		"ac_no": acNo,
	};
}

class Business {
	Business({
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

	Business.fromJson(Map<String, dynamic> json)
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


