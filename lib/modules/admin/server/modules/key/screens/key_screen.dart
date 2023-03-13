import 'package:flutter/material.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/core/styles/colors.dart';

class KeyScreen extends StatelessWidget {
  final int serverId;
  const KeyScreen({super.key, required this.serverId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'SSH Keys',
        color: [colorSecondary, colorPrimary],
      ),
      body: Container(),
    );
  }
}
