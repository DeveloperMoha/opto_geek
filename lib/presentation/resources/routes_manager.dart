import 'package:flutter/material.dart';
import 'package:opto_geek/presentation/home/home_view.dart';
import 'package:opto_geek/presentation/splash/splash_view.dart';

class Routes {
  static const String splashRoute = "/splash";
  static const String homeRoute = "/home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: const Text(""),
                  ),
                  body: const Center(child: Text("")),
                ));
    }
  }
}
