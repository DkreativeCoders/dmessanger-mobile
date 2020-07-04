import 'package:dmessanger_mobile/providers/sign_in_provider.dart';
import 'package:dmessanger_mobile/routes.dart';
import 'package:dmessanger_mobile/utils/constants.dart';
import 'package:dmessanger_mobile/utils/theme.dart';
import 'package:dmessanger_mobile/widgets/components.dart';
import 'package:dmessanger_mobile/widgets/outlined_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var signinProvider = Provider.of<SigninProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Form(
            key: signinProvider.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                verticalSpaceMedium(),
                Text(
                  "Welcome",
                  style: kBigBoldTextStyle,
                ),
                verticalSpaceLarge(),
                OutlinedTextField(
                  labelText: "Email",
                  validator: (value) => signinProvider.emailValidator(value),
                  onChanged: (value) {
                    signinProvider.email = value;
                  },
                ),
                verticalSpaceMedium(),
                OutlinedTextField(
                  labelText: "Password",
                  obscureText: true,
                  validator: (value) => signinProvider.passwordValidator(value),
                  onChanged: (value) {
                    signinProvider.email = value;
                  },
                ),
                verticalSpaceMedium(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      child: Text("Forgot Password?", style: kSmallTextStyle,),
                      onTap: () {
                        Navigator.pushNamed(context, userProfileRoute);
                      },
                    ),
                  ],
                ),
                verticalSpaceMedium(),
                LoginButton(
                  onPressed: () => signinProvider.signin(),
                  isLoading: signinProvider.isLoading,
                ),
                verticalSpaceMedium(),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: kSmallBoldTextStyle,
                      ),
                      SizedBox(height: 3,),
                      InkWell(
                        child: Text("Create one now", style: kSmallBoldTextStyle,),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, registerRoute);
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

class LoginButton extends StatelessWidget {
  final Function onPressed;
  final bool isLoading;

  LoginButton({@required this.onPressed, this.isLoading});

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
                    "SIGNING IN",
                    style: _textStyle,
                  )
                : Text(
                    "SIGN IN",
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
