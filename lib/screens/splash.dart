import 'package:flutter/material.dart';

import '../routes.dart';
import 'package:dmessanger_mobile/routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    loadSplash();
  }

  void loadSplash() async {
    Duration duration = new Duration(seconds: 2);
    await Future.delayed(duration, () {
      Navigator.pushReplacementNamed(context, welcomeScreen1Route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image.asset(
        'assets/images/logo.png',
        alignment: Alignment.center,
        width: 20,
        height: 20,scale: 1.7,
        colorBlendMode: BlendMode.lighten,
      ),
    );
  }
}
