import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:forge/core/cubit/setting/setting_cubit.dart';
import 'package:forge/modules/onboarding/widgets/page_section.dart';

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

  final List<Widget> slides = [
    const PageSectionWidget(
      title: 'Server management doesn\'t have to be a nightmare',
      description: 'Provision and deploy unlimited PHP applications & more',
      image: 'assets/images/onboarding/02.png',
    ),
    const PageSectionWidget(
      title: 'Deploy your application in minutes',
      description:
          'Forge is already making life easier for 534,653 applications',
      image: 'assets/images/onboarding/01.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Flexible(
            child: PageView.builder(
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
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.53,
            child: Row(
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
                      color: slides.indexOf(slide) == currentIndex
                          ? colorPrimary
                          : Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 15,
              ),
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
          Positioned(
            bottom: 10,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: currentIndex == slides.length - 1 ? 1 : 0,
              child: IgnorePointer(
                ignoring: currentIndex != slides.length - 1,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: colorPrimary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                  onPressed: () => context.read<SettingCubit>().setOnboarding(),
                  child: Text(
                    AppLocalizations.of(context)!.start,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
