String validateText(value, String errorMessage) {
  if (value.isEmpty) {
    return errorMessage;
  }

  return null;
}

String validateEmail(String value) {
  if (value.isEmpty) {
    return "Email is required";
  } else if (!RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value)) {
    return "Enter a valid email";
  }
  return null;
}

String validatePhoneNumber(String value) {
  if (value.isEmpty) {
    return "Phone Number is required";
  } else if (value.toString().trim().length != 11) {
    return "Enter a valid Phone Number";
  }
  return null;
}

String validateAge(String value) {
  if (value.isEmpty) {
    return "Required";
  }

  return null;
}

String validatePassword(String value) {
  if (value.isEmpty) {
    return "Password is required";
  } else if (value.length < 8) {
    return "Ensure Password must have minimum of 8 characters";
  }
  return null;
}

String validateConfirmPassword(String password, String confirmPassword) {
  if (confirmPassword.isEmpty || password != confirmPassword) {
    return "Passwords must match";
  }
  return null;
}

bool isNumeric(String value) {
  if (value == null) {
    return false;
  }
  return double.tryParse(value) != null;
}
