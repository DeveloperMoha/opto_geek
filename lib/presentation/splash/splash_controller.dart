import 'dart:async';

import 'package:flutter/material.dart';
import 'package:opto_geek/presentation/home/home_view.dart';

class SplashController {
  void goToHome(context) {
    Timer timer = Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ));
    });
  }
}
