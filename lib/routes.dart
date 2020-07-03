import 'package:dmessanger_mobile/screens/change_password.dart';
import 'package:dmessanger_mobile/screens/forgot_password.dart';
import 'package:dmessanger_mobile/screens/register.dart';
import 'package:dmessanger_mobile/screens/sign_in.dart';
import 'package:dmessanger_mobile/screens/splash.dart';
import 'package:dmessanger_mobile/screens/welcome_screen_one.dart';
import 'package:flutter/material.dart';

const String splashScreen = "/";
const String registerRoute = '/register';
const String signInRoute = '/signin';
const String forgotPasswordRoute = '/forgotpassword';
const String welcomeScreen1Route = '/welcome/1';
const String welcomeScreen2Route = '/welcome/2';
const String welcomeScreen3Route = '/welcome/3';
const String changePasswordRoute = '/changePassword';

const String userHomePageRoute = '/homepage';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());

      case registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());

      case signInRoute:
        return MaterialPageRoute(builder: (_) => SignIn());

      case forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPassword());

      case welcomeScreen1Route:
        return MaterialPageRoute(
          builder: (_) => WelcomeScreenOne(),
        );

      case welcomeScreen2Route:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Container()));
      case welcomeScreen3Route:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Container()));

      case userHomePageRoute:
        return MaterialPageRoute(builder: (_) => Scaffold(body: Container()));

      case changePasswordRoute:
        return MaterialPageRoute(builder: (_) => ChangePassword());

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
