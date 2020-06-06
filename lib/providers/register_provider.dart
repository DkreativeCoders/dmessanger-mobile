import 'package:dmessanger_mobile/locator.dart';
import 'package:dmessanger_mobile/routes.dart';
import 'package:dmessanger_mobile/services/auth.dart';
import 'package:dmessanger_mobile/utils/validations.dart';
import 'package:flutter/widgets.dart';

class RegisterProvider extends ChangeNotifier {
  AuthService _authService = locator<AuthService>();

  var _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  bool _isLoading = false;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool get isLoading => _isLoading;

  String firstName;
  String lastName;
  String email;
  int phoneNumber;
  int age;
  String address;
  String password;
  String confirmPassword;

  firstNameValidator(String value) {
    return validateText(value, "First Name is required");
  }

  lastNameValidator(String value) {
    return validateText(value, "Last Name is required");
  }

  phoneNumberValidator(String value) {
    return validatePhoneNumber(value);
  }

  emailValidator(String value) {
    return validateEmail(value);
  }

  ageValidator(String value) {
    return validateAge(value.toString());
  }

  addressValidator(String value) {
    return null;
  }

  passwordValidator(String value) {
    return validatePassword(value);
  }

  confirmPasswordValidator(String value) {
    return validateConfirmPassword(password, confirmPassword);
  }

  register(context) async {
    if (_formKey.currentState.validate()) {
      isLoading = true;
      notifyListeners();

      try {
        await _authService.register({"": ""});
        Navigator.pushNamed(context, welcomeScreen1Route);
      } catch (e) {
        print(e);
        // DISPLAY ERROR USING THIS
      } finally {
        isLoading = false;
        notifyListeners();
      }
    }
  }
}
