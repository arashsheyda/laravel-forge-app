import 'package:flutter/material.dart';
import 'package:forge/core/utils/storage.dart';

class ShowErrorWidget extends StatelessWidget {
  final String error;
  final String? message;
  const ShowErrorWidget({super.key, required this.error, this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Storage.svg('errors/error-$error.svg', height: 200),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              message ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
