import 'package:flutter/material.dart';
import 'package:forge/core/utils/storage.dart';

class PageSectionWidget extends StatelessWidget {
  final String? animation;
  final String title;
  final String description;
  const PageSectionWidget({
    super.key,
    this.animation,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        animation != null
            ? Storage.animation('$animation.json', width: 250, height: 250)
            : const SizedBox(),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: 20),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
