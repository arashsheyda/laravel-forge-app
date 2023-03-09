import 'package:flutter/material.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/styles/borders.dart';
import 'package:forge/core/utils/storage.dart';
import 'package:forge/core/database/locales.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:forge/core/cubit/setting/setting_cubit.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Storage.animation('translate.json', width: 200),
          const SizedBox(height: 25),
          Text(
            AppLocalizations.of(context)!.selectLang,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: BlocBuilder<SettingCubit, SettingState>(
              builder: (context, state) {
                return DropdownButton(
                  isExpanded: true,
                  value: state.locale,
                  borderRadius: borderRadius,
                  dropdownColor: Theme.of(context).brightness == Brightness.dark
                      ? colorOnBoardingDark
                      : colorOnBoardingLight,
                  underline: const DecoratedBox(
                    decoration: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.check, color: Colors.red),
                  items: locales.map<DropdownMenuItem<String>>((locale) {
                    return DropdownMenuItem<String>(
                      value: locale['iso']!,
                      child: Row(
                        children: [
                          Storage.svg('flag/${locale['iso']}.svg', height: 20),
                          const SizedBox(width: 10),
                          Text(locale['name']!),
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (value) =>
                      context.read<SettingCubit>().setLocale(value!),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
