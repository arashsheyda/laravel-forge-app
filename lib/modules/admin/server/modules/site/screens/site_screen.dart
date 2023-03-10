import 'package:flutter/material.dart';

class SiteScreen extends StatelessWidget {
  final int serverId;
  const SiteScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' $serverId Sites'),
      ),
    );
  }
}
