import 'package:dmessanger_mobile/providers/register_provider.dart';
import 'package:dmessanger_mobile/routes.dart';
import 'package:dmessanger_mobile/utils/constants.dart';
import 'package:dmessanger_mobile/utils/validations.dart';
import 'package:dmessanger_mobile/widgets/components.dart';
import 'package:dmessanger_mobile/widgets/outlined_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var registerProvider = Provider.of<RegisterProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Form(
            key: registerProvider.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                verticalSpaceMedium(),
                Text(
                  "Register",
                  style: kBigBoldTextStyle,
                ),
                verticalSpaceLarge(),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: OutlinedTextField(
                        labelText: "First Name",
                        validator: (value) =>
                            registerProvider.firstNameValidator(value),
                        onChanged: (value) {
                          registerProvider.firstName = value;
                        },
                      ),
                    ),
                    horizontalSpaceSmall(),
                    Expanded(
                      child: OutlinedTextField(
                        labelText: "Last Name",
                        validator: (value) =>
                            registerProvider.lastNameValidator(value),
                        onChanged: (value) {
                          registerProvider.lastName = value;
                        },
                      ),
                    ),
                  ],
                ),
                verticalSpaceMedium(),
                OutlinedTextField(
                  labelText: "Email",
                  validator: (value) => registerProvider.emailValidator(value),
                  onChanged: (value) {
                    registerProvider.email = value;
                  },
                ),
                verticalSpaceMedium(),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: OutlinedTextField(
                        validator: (value) =>
                            registerProvider.phoneNumberValidator(value),
                        labelText: "Phone Number",
                        onChanged: (value) {
                          if (isNumeric(value)) {
                            registerProvider.phoneNumber = int.parse(value);
                          }
                        },
                      ),
                    ),
                    horizontalSpaceSmall(),
                    Expanded(
                      flex: 1,
                      child: OutlinedTextField(
                        validator: (value) =>
                            registerProvider.ageValidator(value),
                        labelText: "Age",
                        onChanged: (value) {
                          if (isNumeric(value)) {
                            registerProvider.age = int.parse(value);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                verticalSpaceMedium(),
                OutlinedTextField(
                  validator: (value) =>
                      registerProvider.addressValidator(value),
                  labelText: "Address (Optional)",
                  onChanged: (value) {
                    registerProvider.address = value;
                  },
                ),
                verticalSpaceMedium(),
                OutlinedTextField(
                  obscureText: true,
                  validator: (value) =>
                      registerProvider.passwordValidator(value),
                  labelText: "Password",
                  onChanged: (value) {
                    registerProvider.password = value;
                  },
                ),
                verticalSpaceMedium(),
                OutlinedTextField(
                  validator: (value) =>
                      registerProvider.confirmPasswordValidator(value),
                  obscureText: true,
                  labelText: "Confirm Password",
                  onChanged: (value) {
                    registerProvider.confirmPassword = value;
                  },
                ),
                verticalSpaceMedium(),
                verticalSpaceSmall(),
                RegisterButton(
                  onPressed: () => registerProvider.register(context),
                  isLoading: registerProvider.isLoading,
                ),
                verticalSpaceMedium(),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Already Have an Account?",
                        style: kSmallBoldTextStyle,
                      ),
                      SizedBox(height: 3,),
                      InkWell(
                        child: Text("Sign in", style: kSmallBoldTextStyle,),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, signInRoute);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterButton extends StatelessWidget {
  final Function onPressed;
  final bool isLoading;

  RegisterButton({@required this.onPressed, this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        highlightElevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "REGISTER",
              style: TextStyle(color: Colors.white),
            ),
            horizontalSpaceSmall(),
            isLoading
                ? SpinKitDoubleBounce(
                    color: Colors.white,
                    size: 18,
                  )
                : SizedBox(),
          ],
        ),
        disabledColor: Colors.blue[400],
        padding: EdgeInsets.symmetric(vertical: 15),
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: isLoading ? null : onPressed,
      ),
    );
  }
}
