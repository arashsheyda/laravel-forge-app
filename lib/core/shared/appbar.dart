import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  final List<Color> color;
  final List<BoxShadow>? shadow;
  final Widget? child;
  final List<Widget>? actions;
  final Widget? leading;
  final BorderRadius? borderRadius;

  const AppBarWidget({
    super.key,
    required this.title,
    this.height = 70,
    this.child,
    this.actions,
    this.leading,
    this.color = const [
      Color(0xFF1f1f1f),
      Color(0xFF010101),
    ],
    this.shadow,
    this.borderRadius,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(300),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: shadow,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: color,
          ),
          borderRadius: borderRadius,
        ),
        child: Stack(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text(title),
              elevation: 0,
              actions: actions,
              leading: leading,
            ),
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}
