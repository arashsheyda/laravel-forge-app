import 'package:flutter/material.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:forge/core/styles/borders.dart';
import 'package:forge/core/constants/links.dart';
import 'package:forge/core/services/url_service.dart';

class BMCWidget extends StatelessWidget {
  const BMCWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async => UrlService.open(bmcLink),
      splashColor: colorBmc,
      borderRadius: borderRadius,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Material(
          color: Brightness.dark == Theme.of(context).brightness
              ? colorBmc
              : Colors.transparent,
          borderRadius: borderRadius,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network(
              'https://cdn.buymeacoffee.com/assets/img/home-page-v3/bmc-new-logo.png',
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}
