import 'package:flutter/material.dart';
import 'package:forge/modules/admin/server/modules/site/router/site_arguments.dart';

class SiteDetailScreen extends StatelessWidget {
  final SiteDetailArguments arguments;
  const SiteDetailScreen({super.key, required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Site Detail ${arguments.siteId}'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          _gContainer(
            context,
            title: 'Deployment',
            image: 'assets/images/deployment.png',
            route: '/server/detail/site/detail/deployment',
            routeArguments: arguments,
          ),
          _gContainer(
            context,
            title: 'Logs',
            image: 'assets/images/log.png',
            route: '/server/detail/site/detail/log',
            routeArguments: arguments,
          ),
          _gContainer(
            context,
            title: 'Commands',
            image: 'assets/images/terminal.png',
            route: '/server/detail/site/detail/command',
            routeArguments: arguments,
          ),
        ],
      ),
    );
  }

  Container _gContainer(
    BuildContext context, {
    required String title,
    required String image,
    required String route,
    routeArguments,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF00B4DB),
            Color(0xFF0083B0),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => Navigator.of(context).pushNamed(
            route,
            arguments: routeArguments,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 77,
                child: Image.asset(image, color: Colors.white),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
