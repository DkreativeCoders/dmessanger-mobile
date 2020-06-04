import 'dart:convert';
import 'package:dmessanger_mobile/utils/service_handler.dart';

class AuthService {
  static Future<Map<String, dynamic>> register(
      Map<String, dynamic> registrationDetails) async {
    try {
      String url = "";
      var response = await APIServiceHandler.get(url);
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception("Registration could not be completed. Try again");
      }
    } catch (e) {
      throw Exception("An error occured");
    }
  }

  static Future<Map<String, dynamic>> signin(Map<String, dynamic> signinDetails) async {
    try {
      String url = "";
      var response = await APIServiceHandler.get(url);
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception("Registration could not be completed. Try again");
      }
    } catch (e) {
      print(e);
      throw Exception("An error occured");
    }
  }
}
