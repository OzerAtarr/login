import 'package:flutter/material.dart';
import 'package:login/screens/login/login_page.dart';
import 'package:login/screens/splash/splash_screen.dart';

class RouteHelper {
  static const String splashPage = "/splash-page";
  static const String initial = "/login";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashPage:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case initial:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("Sayfa Bulunamadı!")),
          ),
        );
    }
  }
}
