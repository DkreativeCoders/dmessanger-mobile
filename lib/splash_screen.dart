import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
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
