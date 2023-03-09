import 'package:flutter/material.dart';
import 'package:forge/core/shared/logo.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: colorPrimary,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 60),
                      const LogoWidget(),
                      const SizedBox(height: 5),
                      Text(
                        AppLocalizations.of(context)!.appName,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
                const Divider(height: 1, color: Colors.grey),
                ListTile(
                  leading: const Icon(Icons.info, color: Colors.blue),
                  title: Text(AppLocalizations.of(context)!.about),
                  onTap: () => Navigator.pushNamed(context, '/about'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
