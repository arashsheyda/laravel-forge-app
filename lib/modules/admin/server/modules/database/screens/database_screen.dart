import 'package:flutter/material.dart';

class DatabaseScreen extends StatelessWidget {
  final int serverId;
  const DatabaseScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' $serverId Databases'),
      ),
    );
  }
}
