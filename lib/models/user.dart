class User {
  String firstName;
  String lastName;
  String email;
  int age;
  int phoneNumber;
  String address;
  String password;

  User(
      {this.firstName,
        this.lastName,
        this.email,
        this.age,
        this.phoneNumber,
        this.address,
        this.password});

  User.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    age = json['age'];
    phoneNumber = json['phoneNumber'];
    address = json['address'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['age'] = this.age;
    data['phoneNumber'] = this.phoneNumber;
    data['address'] = this.address;
    data['password'] = this.password;
    return data;
  }
}