import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Storage {
  static image(
    String path, {
    double? height,
    double? width,
    BoxFit fit = BoxFit.contain,
  }) {
    return Image.asset(
      'assets/images/$path',
      height: height,
      width: width,
      fit: fit,
    );
  }

  static svg(
    String path, {
    double? height,
    double? width,
    Color? color,
    BlendMode blendMode = BlendMode.srcIn,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      'assets/svg/$path',
      height: height,
      width: width,
      colorFilter: color != null ? ColorFilter.mode(color, blendMode) : null,
      fit: fit,
    );
  }

  static api(
    String path, {
    double? height,
    double? width,
    BoxFit fit = BoxFit.contain,
  }) {
    return Image.network(dotenv.env['API_URL']! + path);
  }

  static animation(
    String path, {
    double? height,
    double? width,
    BoxFit fit = BoxFit.contain,
  }) {
    return Lottie.asset(
      'assets/animations/$path',
      fit: fit,
      height: height,
      width: width,
    );
  }
}
