import 'package:dmessanger_mobile/screens/welcome_screen_one.dart';
import 'package:flutter/material.dart';

const String welcomeScreen1Route = '/';
const String welcomeScreen2Route = '/welcome/2';
const String welcomeScreen3Route = '/welcome/3';

const String signInRoute = '/signin';
const String registerRoute = '/register';
const String forgotPasswordRoute = '/forgotpassword';

const String userHomePageRoute = '/homepage';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreen1Route:
        return MaterialPageRoute(
          builder: (_) => WelcomeScreenOne(),
        );

      case welcomeScreen2Route:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Container()));
      case welcomeScreen3Route:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Container()));

      case signInRoute:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Container()));
      case registerRoute:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Container()));
      case forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Container()));

      case userHomePageRoute:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Container()));

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Oops Something Broke'),
            ),
          ),
        );
    }
  }
}
