
import 'package:base_ui_flutter/navigation/route.dart';
import 'package:base_ui_flutter/presentation/screens/home/home_page.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/session/signup_screen.dart';
import '../presentation/screens/slapsh/splash_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
            settings: settings,
            fullscreenDialog: true,
            builder: (_)=>SplashPage());
      case homePage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>MyHomePage());
      case signupPage:
        return MaterialPageRoute(
            settings: settings,
            builder: (_)=>SignupScreen());
      default:
        return _errorRoute();
    }
  }

  // error screen
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Error ! No se encontro la ventana',
            style: TextStyle(color: Colors.red, fontSize: 18.0),
          ),
        ),
      );
    });
  }

}


