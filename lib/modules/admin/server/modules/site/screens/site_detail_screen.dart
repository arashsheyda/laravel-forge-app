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
    );
  }
}
