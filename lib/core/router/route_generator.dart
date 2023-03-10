import 'package:flutter/cupertino.dart';
import 'package:forge/modules/about/screens/about_screen.dart';
import 'package:forge/modules/admin/server/modules/database/screens/database_screen.dart';
import 'package:forge/modules/admin/server/screens/server_detail_screen.dart';
import 'package:forge/modules/app.dart';
import 'package:forge/modules/auth/screens/login_screen.dart';
import 'package:forge/modules/error/screens/not_found_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(builder: (_) => const App());
      case '/about':
        return CupertinoPageRoute(builder: (_) => const AboutScreen());
      case '/auth/login':
        return CupertinoPageRoute(builder: (_) => const LoginScreen());

      case '/server/detail':
        if (arguments is int) {
          return CupertinoPageRoute(
              builder: (_) => ServerDetailScreen(serverId: arguments));
        }
        return notFound(settings);

      case '/server/detail/database':
        if (arguments is int) {
          return CupertinoPageRoute(
              builder: (_) => DatabaseScreen(serverId: arguments));
        }
        return notFound(settings);

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
