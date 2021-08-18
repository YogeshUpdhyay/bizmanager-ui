class Creator {
	Creator({
		required this.id,
		required this.name,
		required this.email,
	});

	String id;
	String name;
	String email;

	Creator.fromJson(Map<String, dynamic> json)
		:	id = json["id"],
			name = json["name"],
			email = json["email"];

	Map<String, dynamic> toJson() => {
		"id": id,
		"name": name,
		"email": email,
	};
}