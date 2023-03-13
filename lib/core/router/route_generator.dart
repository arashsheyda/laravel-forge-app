import 'package:flutter/cupertino.dart';
import 'package:forge/modules/about/screens/about_screen.dart';
import 'package:forge/modules/admin/server/modules/database/screens/database_screen.dart';
import 'package:forge/modules/admin/server/modules/key/screens/key_creat_screen.dart';
import 'package:forge/modules/admin/server/modules/key/screens/key_screen.dart';
import 'package:forge/modules/admin/server/modules/site/modules/deployment/screens/deployment_screen.dart';
import 'package:forge/modules/admin/server/modules/site/router/site_arguments.dart';
import 'package:forge/modules/admin/server/modules/site/screens/site_detail_screen.dart';
import 'package:forge/modules/admin/server/modules/site/screens/site_screen.dart';
import 'package:forge/modules/admin/server/screens/server_detail_screen.dart';
import 'package:forge/modules/admin/user/screens/user_screen.dart';
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

      case '/user':
        return CupertinoPageRoute(builder: (_) => const UserScreen());

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

      case '/server/detail/site':
        if (arguments is int) {
          return CupertinoPageRoute(
              builder: (_) => SiteScreen(serverId: arguments));
        }
        return notFound(settings);

      case '/server/detail/site/detail':
        if (arguments is SiteDetailArguments) {
          return CupertinoPageRoute(
              builder: (_) => SiteDetailScreen(arguments: arguments));
        }
        return notFound(settings);

      case '/server/detail/site/detail/deployment':
        if (arguments is SiteDetailArguments) {
          return CupertinoPageRoute(
              builder: (_) => DeploymentScreen(arguments: arguments));
        }
        return notFound(settings);

      case '/server/detail/key':
        if (arguments is int) {
          return CupertinoPageRoute(
              builder: (_) => KeyScreen(serverId: arguments));
        }
        return notFound(settings);

      case '/server/detail/key/create':
        if (arguments is int) {
          return CupertinoPageRoute(
              builder: (_) => KeyCreatScreen(serverId: arguments));
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
