import 'package:dmessanger_mobile/locator.dart';
import 'package:dmessanger_mobile/providers/register_provider.dart';
import 'package:dmessanger_mobile/providers/sign_in_provider.dart';
import 'package:dmessanger_mobile/routes.dart';
import 'package:dmessanger_mobile/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  registerLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => RegisterProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SigninProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DK Messenger',
        theme: ThemeData(
          primarySwatch: primaryColour,
          primaryColor: primaryColour,
          fontFamily: 'Roboto'
        ),
        initialRoute: registerRoute,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
