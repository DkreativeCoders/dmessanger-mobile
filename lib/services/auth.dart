import 'dart:convert';
import 'package:dmessanger_mobile/models/user.dart';
import 'package:dmessanger_mobile/utils/service_handler.dart';

class AuthService{
  // Modify to use the fromJson Value
   Future<User> register(
      Map<String, dynamic> registrationDetails) async {
    try {
      String url = "";
      var response = await APIServiceHandler.get(url);
      if (response.statusCode == 200) {
        return User.fromJson(json.decode(response.body));
      } else {
        throw Exception("Registration could not be completed. Try again");
      }
    } catch (e) {
      throw Exception("An error occured");
    }
  }

   Future<User> signin(Map<String, dynamic> signinDetails) async {
    try {
      String url = "";
      var response = await APIServiceHandler.get(url);
      if (response.statusCode == 200) {
        return User.fromJson(json.decode(response.body));
      } else {
        throw Exception("Registration could not be completed. Try again");
      }
    } catch (e) {
      throw Exception("An error occured");
    }
  }
}
