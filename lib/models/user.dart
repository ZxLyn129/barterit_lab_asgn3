class User {
  String? id;
  String? email;
  String? name;
  String? password;
  String? otp;
  String? dateregister;

  User(
      {required this.id,
      required this.email,
      required this.name,
      this.password,
      required this.otp,
      required this.dateregister});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    name = json['name'];
    password = json['password'];
    otp = json['otp'];
    dateregister = json['datereg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['name'] = name;
    data['password'] = password;
    data['otp'] = otp;
    data['datereg'] = dateregister;
    return data;
  }
}
