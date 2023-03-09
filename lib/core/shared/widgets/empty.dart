import 'package:flutter/material.dart';
import 'package:forge/core/utils/storage.dart';

class EmptyWidget extends StatelessWidget {
  final String text;
  const EmptyWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Storage.animation('not-found.json', height: 200),
          Text(text),
        ],
      ),
    );
  }
}
