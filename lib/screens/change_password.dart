import 'package:dmessanger_mobile/providers/change_password_provider.dart';
import 'package:dmessanger_mobile/routes.dart';
import 'package:dmessanger_mobile/utils/constants.dart';
import 'package:dmessanger_mobile/utils/theme.dart';
import 'package:dmessanger_mobile/widgets/components.dart';
import 'package:dmessanger_mobile/widgets/outlined_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class ChangePassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var changePasswordProvider = Provider.of<ChangePasswordProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Form(
            key: changePasswordProvider.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                verticalSpaceMedium(),
                Text(
                  "Change Password",
                  style: kBigBoldTextStyle,
                ),
                verticalSpaceLarge(),
                OutlinedTextField(
                  labelText: "Old password",
                  validator: (value) =>
                      changePasswordProvider.passwordValidator(value),
                  onChanged: (value) {
                    changePasswordProvider.oldPassword = value;
                  },
                ),
                verticalSpaceMedium(),
                OutlinedTextField(
                  labelText: "New Password",
                  obscureText: true,
                  validator: (value) =>
                      changePasswordProvider.passwordValidator(value),
                  onChanged: (value) {
                    changePasswordProvider.newPassword = value;
                  },
                ),
                verticalSpaceMedium(),
                OutlinedTextField(
                  labelText: "Confirm New Password",
                  obscureText: true,
                  validator: (value) =>
                      changePasswordProvider.confirmPasswordValidator(value),
                  onChanged: (value) {
                    changePasswordProvider.confirmNewPassword = value;
                  },
                ),
                verticalSpaceMedium(),
                verticalSpaceSmall(),
                ChangePasswordButton(
                  onPressed: () =>
                      changePasswordProvider.changePassword(context),
                  isLoading: changePasswordProvider.isLoading,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChangePasswordButton extends StatelessWidget {
  final Function onPressed;
  final bool isLoading;

  ChangePasswordButton({@required this.onPressed, this.isLoading});

  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle = TextStyle(color: Colors.white);
    return Container(
      width: double.infinity,
      child: RaisedButton(
        highlightElevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isLoading
                ? Text(
                    "PROCESSING",
                    style: _textStyle,
                  )
                : Text(
                    "SUBMIT",
                    style: _textStyle,
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
        disabledColor: primaryColour[800],
        padding: EdgeInsets.symmetric(vertical: 15),
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: isLoading ? null : onPressed,
      ),
    );
  }
}
