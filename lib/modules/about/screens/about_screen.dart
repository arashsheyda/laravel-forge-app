import 'package:flutter/material.dart';
import 'package:forge/core/shared/logo.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:forge/core/styles/borders.dart';
import 'package:forge/core/utils/storage.dart';
import 'package:forge/core/constants/links.dart';
import 'package:forge/core/shared/widgets/bmc.dart';
import 'package:forge/core/services/url_service.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:forge/modules/about/widgets/social_item.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );
  double _height = 0;

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
    startAnimation();
  }

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 50)).then(
      (value) => setState(() {
        _height = MediaQuery.of(context).size.height * 0.17;
      }),
    );
  }

  Future<void> _initPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorPrimary,
        title: Text(AppLocalizations.of(context)!.about),
      ),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: double.infinity,
              color: colorPrimary,
              curve: Curves.ease,
              height: _height,
            ),
          ),
          Positioned(
            top: _height - 67,
            left: 0,
            right: 0,
            child: Column(
              children: [
                const LogoWidget(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  child: Material(
                    borderRadius: borderRadius,
                    elevation: 13,
                    color: Theme.of(context).colorScheme.background,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: Column(
                            children: [
                              Text(AppLocalizations.of(context)!.information),
                              const Divider(),
                            ],
                          ),
                        ),
                        ListTile(
                          minLeadingWidth: 0,
                          leading: const Icon(Icons.info_outline),
                          title: Text(_packageInfo.appName),
                          subtitle: const Text('name'),
                          onTap: () {},
                        ),
                        ListTile(
                          minLeadingWidth: 0,
                          leading: Storage.svg(
                            'icons/version.svg',
                            color: Colors.grey,
                            height: 20,
                          ),
                          title: Text(_packageInfo.version),
                          subtitle: const Text('version'),
                          onTap: () {},
                        ),
                        ListTile(
                          minLeadingWidth: 0,
                          leading: const Icon(Icons.copyright),
                          title: const Text('Persian SDA'),
                          subtitle: const Text('developer'),
                          onTap: () {},
                        ),
                        const Divider(),
                        const BMCWidget(),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: SizedBox(
              height: 100,
              width: double.infinity,
              child: GridView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: [
                  SocialItemWidget(
                    name: 'App Store',
                    icon: 'appstore',
                    colors: colorAppStoreGradient,
                  ),
                  SocialItemWidget(
                    name: 'Google Play',
                    icon: 'google-playstore',
                    colors: colorGooglePlayGradient,
                  ),
                  SocialItemWidget(
                    name: 'Buy me a coffee',
                    icon: 'bmc',
                    colors: colorBmcGradient,
                    onTap: () async => UrlService.open(bmcLink),
                  ),
                  SocialItemWidget(
                    name: 'Github',
                    icon: 'github',
                    colors: colorGithubGradient,
                    onTap: () async => UrlService.open(githubLink),
                  ),
                  SocialItemWidget(
                    name: 'Instagram',
                    icon: 'instagram',
                    colors: colorInstagramGradient,
                  ),
                  SocialItemWidget(
                    name: 'Youtube',
                    icon: 'youtube',
                    colors: colorYoutubeGradient,
                  ),
                  SocialItemWidget(
                    name: 'Twitter',
                    icon: 'twitter',
                    colors: colorTwitterGradient,
                  ),
                  SocialItemWidget(
                    name: 'Telegram',
                    icon: 'telegram',
                    colors: colorTelegramGradient,
                  ),
                  SocialItemWidget(
                    name: 'Linkedin',
                    icon: 'linkedin',
                    colors: colorLinkedinGradient,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
