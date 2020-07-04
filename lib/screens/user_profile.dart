import 'package:cached_network_image/cached_network_image.dart';
import 'package:dmessanger_mobile/utils/constants.dart';
import 'package:dmessanger_mobile/utils/theme.dart';
import 'package:dmessanger_mobile/widgets/components.dart';
import 'package:flutter/material.dart';
import 'package:dmessanger_mobile/routes.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  verticalSpaceSmall(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.edit,
                        size: 30.0,
                        color: primaryColour,
                      )
                    ],
                  ),
                  verticalSpaceMedium(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl: 'https://picsum.photos/250?image=9',
                        imageBuilder: (context, imageProvider) => Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        placeholder: (context, url) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(
                            Icons.account_circle,
                            size: 100.0,
                            color: primaryColour
                            ),
                      ),
                    ],
                  ),
                  verticalSpaceMedium(),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "John Doe",
                          style: kBigTextStyle,
                        ),
                        verticalSpaceSmall(),
                        Text(
                          "johndoe@example",
                          style: kSmallTextStyle,
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceMedium(),
                  verticalSpaceMedium(),
                  ListTile(
                    leading: Icon(
                      Icons.notifications,
                      size: 42,
                      color: primaryColour,
                    ),
                    title: Text(
                      "Notifications",
                      style: kMediumTextStyle,
                    ),
                    onTap: () => print("Notifications"),
                  ),
                  verticalSpaceSmall(),
                  ListTile(
                    leading: Icon(
                      Icons.security,
                      size: 42,
                      color: primaryColour,
                    ),
                    title: Text(
                      "Change Password",
                      style: kMediumTextStyle,
                    ),
                    onTap: () => Navigator.pushNamed(context, changePasswordRoute),
                  ),
                  verticalSpaceSmall(),
                  ListTile(
                    leading: Icon(
                      Icons.help,
                      size: 42,
                      color: primaryColour,
                    ),
                    title: Text(
                      "Help & Support",
                      style: kMediumTextStyle,
                    ),
                    onTap: () => print("Help & Support"),
                  ),
                  verticalSpaceSmall(),
                  ListTile(
                    leading: Icon(
                      Icons.notifications,
                      size: 42,
                      color: primaryColour,
                    ),
                    title: Text(
                      "Terms & Conditions",
                      style: kMediumTextStyle,
                    ),
                    onTap: () => print("Terms & Conditions"),
                  ),
                  verticalSpaceSmall(),
                  ListTile(
                    leading: Icon(
                      Icons.exit_to_app,
                      size: 42,
                      color: primaryColour,
                    ),
                    title: Text(
                      "Sign Out",
                      style: kMediumTextStyle,
                    ),
                    onTap: () => print("Sign Out"),
                  ),
                ])),
      ),
    );
  }
}
