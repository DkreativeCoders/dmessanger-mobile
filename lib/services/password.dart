import 'package:dmessanger_mobile/utils/service_handler.dart';

class PasswordService{
  // Modify to use the fromJson Value
   Future<void> changePassword(
      Map<String, dynamic> rpasswordChangeDetails) async {
    try {
      String url = "";
      var response = await APIServiceHandler.get(url);
      if (response.statusCode == 200) {
        return ;
      } else {
        throw Exception("Password change could not be completed. Try again");
      }
    } catch (e) {
      throw Exception("An error occured");
    }
  }
}
