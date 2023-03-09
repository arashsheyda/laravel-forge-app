import 'package:flutter/material.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:forge/modules/error/widgets/show_error.dart';

class NotFoundScreen extends StatelessWidget {
  final String message;
  const NotFoundScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorError,
        title: Text(AppLocalizations.of(context)!.error),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowErrorWidget(
              error: '404',
              message: message,
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
