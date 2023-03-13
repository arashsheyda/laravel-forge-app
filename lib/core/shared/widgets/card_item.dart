import 'package:flutter/material.dart';
import 'package:forge/core/styles/borders.dart';

class CardItem extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final String? subtitle;
  final Color? subTitleColor;
  final String? description;
  final Color? descriptionColor;
  final Widget? trailing;
  final Widget? leading;
  final VoidCallback? onTap;

  final Color? color;
  final Color? splashColor;
  final List<Color>? gradient;
  final List<BoxShadow>? shadow;

  const CardItem({
    super.key,
    required this.title,
    this.titleColor = Colors.black,
    this.subtitle,
    this.subTitleColor = Colors.grey,
    this.description,
    this.descriptionColor = Colors.grey,
    this.trailing,
    this.leading,
    this.onTap,
    this.color,
    this.splashColor,
    this.gradient,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: shadow,
        gradient: gradient != null
            ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradient!,
              )
            : null,
        color: color ?? Theme.of(context).cardColor,
      ),
      child: Material(
        borderRadius: borderRadius,
        color: Colors.transparent,
        child: InkWell(
          borderRadius: borderRadius,
          splashColor: splashColor ?? Theme.of(context).splashColor,
          onTap: onTap,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: subTitleColor,
                  ),
                ),
              ),
              leading != null
                  ? Positioned(
                      top: 15,
                      left: 15,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                        child: leading,
                      ),
                    )
                  : const SizedBox.shrink(),
              Positioned(
                bottom: 15,
                left: 15,
                right: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: titleColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          subtitle ?? '',
                          style: TextStyle(
                            color: subTitleColor,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          description ?? '',
                          style: TextStyle(
                            color: descriptionColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
