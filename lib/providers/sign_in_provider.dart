import 'package:dmessanger_mobile/locator.dart';
import 'package:dmessanger_mobile/services/auth.dart';
import 'package:dmessanger_mobile/utils/validations.dart';
import 'package:flutter/widgets.dart';

class SigninProvider extends ChangeNotifier {
  AuthService _authService = locator<AuthService>();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  var _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  String email;
  String password;

  emailValidator(value) {
    return validateEmail(value);
  }

  passwordValidator(value) {
    return validateText(value, "Password is required");
  }

  signin() async {
    if (_formKey.currentState.validate()) {
      _isLoading = true;
      notifyListeners();

      try {
        await _authService.signin({"": ""});
      } catch (e) {} finally {
        _isLoading = false;
        notifyListeners();
      }
    }
  }
}
