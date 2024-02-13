import 'package:flowers/app/settings.dart';
import 'package:flowers/screen/details_flowers_screen.dart';
import 'package:flowers/screen/flowerScreen.dart';
import 'package:flowers/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case flowersScreen:
        return MaterialPageRoute(builder: (_) => FlowerScreen());
      case detailsFlowersScreen:
        return MaterialPageRoute(builder: (_) => const DetailsFlowersScreen());
    }
    return null;
  }
}
