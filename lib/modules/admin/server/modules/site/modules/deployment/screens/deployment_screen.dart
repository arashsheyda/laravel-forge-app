import 'package:flutter/material.dart';
import 'package:forge/modules/admin/server/modules/site/router/site_arguments.dart';

class DeploymentScreen extends StatelessWidget {
  final SiteDetailArguments arguments;
  const DeploymentScreen({super.key, required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deployment ${arguments.siteId}'),
      ),
    );
  }
}
