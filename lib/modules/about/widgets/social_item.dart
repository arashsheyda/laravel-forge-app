import 'package:flutter/material.dart';
import 'package:forge/core/utils/storage.dart';

class SocialItemWidget extends StatelessWidget {
  final String name;
  final String icon;
  final List<Color> colors;
  final VoidCallback? onTap;
  const SocialItemWidget({
    super.key,
    required this.name,
    required this.icon,
    required this.colors,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            spreadRadius: 5,
            offset: const Offset(0, 3),
            color: colors[0].withOpacity(0.3),
          ),
        ],
        borderRadius: BorderRadius.circular(23),
      ),
      child: Tooltip(
        message: name,
        child: InkWell(
          onTap: onTap,
          splashColor: colors[0],
          borderRadius: BorderRadius.circular(23),
          child: FractionallySizedBox(
            heightFactor: 0.4,
            child: Storage.svg('icons/$icon.svg', color: Colors.white),
          ),
        ),
      ),
    );
  }
}
