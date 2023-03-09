import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:forge/core/cubit/setting/setting_cubit.dart';
import 'package:forge/modules/onboarding/widgets/onboarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? colorOnBoardingDark
          : colorOnBoardingLight,
      body: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) => setState(() => currentIndex = index),
        itemCount: slides.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: slides[index],
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).colorScheme.background,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: currentIndex == slides.length - 1 ? 0 : 1,
              child: MaterialButton(
                onPressed: () => _pageController.animateToPage(
                  slides.length - 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                ),
                child: Text(
                  AppLocalizations.of(context)!.skip,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            Row(
              children: [
                for (var slide in slides) ...[
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.ease,
                    margin: const EdgeInsets.only(right: 8),
                    width: slides.indexOf(slide) == currentIndex ? 20 : 7,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ],
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: currentIndex == slides.length - 1
                  ? MaterialButton(
                      onPressed: () =>
                          context.read<SettingCubit>().setOnboarding(),
                      color: Colors.green,
                      child: Text(
                        AppLocalizations.of(context)!.start,
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  : MaterialButton(
                      onPressed: () => _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.next,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
