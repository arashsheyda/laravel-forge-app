import 'package:flutter/material.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/modules/admin/server/modules/log/router/log_arguments.dart';

class LogDetailScreen extends StatelessWidget {
  final LogDetailArguments arguments;
  const LogDetailScreen({super.key, required this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: '${arguments.file} Logs',
        color: const [
          Color(0xFFf8d323),
          Color(0xFFf8af23),
          Color(0xFFf8af23),
        ],
      ),
      body: Container(),
    );
  }
}
