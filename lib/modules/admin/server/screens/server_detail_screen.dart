import 'package:flutter/material.dart';

class ServerDetailScreen extends StatelessWidget {
  final int serverId;
  const ServerDetailScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Server $serverId'),
      ),
    );
  }
}
