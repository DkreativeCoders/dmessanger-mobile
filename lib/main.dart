import 'package:dmessanger_mobile/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DK Messenger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: splashScreen,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
