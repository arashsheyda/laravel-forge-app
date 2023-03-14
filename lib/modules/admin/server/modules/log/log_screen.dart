import 'package:flutter/material.dart';
import 'package:forge/core/shared/appbar.dart';

class LogScreen extends StatelessWidget {
  final int serverId;
  const LogScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Logs',
        color: [
          Color(0xFFf8d323),
          Color(0xFFf8af23),
          Color(0xFFf8af23),
        ],
      ),
      body: Container(),
    );
  }
}
