import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forge/core/utils/storage.dart';

class PageSectionWidget extends StatelessWidget {
  final String? image;
  final String? animation;
  final String title;
  final String description;
  const PageSectionWidget({
    super.key,
    this.image,
    this.animation,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image != null
            ? Image.asset(
                image!,
              )
            : const SizedBox.shrink(),
        animation != null
            ? Storage.animation('$animation.json', width: 250, height: 250)
            : const SizedBox.shrink(),
        const SizedBox(height: 100),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        const SizedBox(height: 50),
        Text(
          description,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontSize: 13),
        ),
      ],
    );
  }
}
