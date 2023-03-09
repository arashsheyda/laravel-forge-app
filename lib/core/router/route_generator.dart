import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:forge/modules/about/screens/about_screen.dart';
import 'package:forge/modules/app.dart';
import 'package:forge/modules/error/screens/not_found_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    // final arguments = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const App());
      case '/about':
        return MaterialPageRoute(builder: (_) => const AboutScreen());

      default:
        return notFound(settings);
    }
  }

  static CupertinoPageRoute<dynamic> notFound(RouteSettings settings) {
    return CupertinoPageRoute(
      builder: (_) =>
          NotFoundScreen(message: 'Route not found: ${settings.name}'),
    );
  }
}
