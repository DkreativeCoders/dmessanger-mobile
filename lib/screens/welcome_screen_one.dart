import 'package:dmessanger_mobile/utils/service_handler.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class WelcomeScreenOne extends StatefulWidget {
  @override
  _WelcomeScreenOneState createState() => _WelcomeScreenOneState();
}

class _WelcomeScreenOneState extends State<WelcomeScreenOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'DMessanger',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
