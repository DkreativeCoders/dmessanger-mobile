import 'package:dmessanger_mobile/locator.dart';
import 'package:dmessanger_mobile/routes.dart';
import 'package:dmessanger_mobile/services/password.dart';
import 'package:dmessanger_mobile/utils/validations.dart';
import 'package:flutter/widgets.dart';

// PasswordService
class ChangePasswordProvider extends ChangeNotifier {
  PasswordService _passwordService = locator<PasswordService>();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  var _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  String oldPassword;
  String newPassword;
  String confirmNewPassword;

  passwordValidator(String value) {
    return validatePassword(value);
  }

  confirmPasswordValidator(String value) {
    return validateConfirmPassword(newPassword, confirmNewPassword);
  }

  changePassword(context) async {
    if (_formKey.currentState.validate()) {
      _isLoading = true;
      notifyListeners();

      try {
        await _passwordService.changePassword({"": ""});
        // todo : USER DATA WILL BE CLEARED
        Navigator.of(context).pushNamedAndRemoveUntil(splashScreen, (Route<dynamic> route) => false);
      } catch (e) {
        print(e);
        // DISPLAY ERROR USING THIS
      } finally {
        _isLoading = false;
        notifyListeners();
      }
    }
  }
}
