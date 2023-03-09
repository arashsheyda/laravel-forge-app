import 'package:flutter/material.dart';
import 'package:forge/core/cubit/setting/setting_cubit.dart';
import 'package:forge/core/cubit/navigation/navigation_cubit.dart';

import 'package:forge/modules/app.dart';
import 'package:forge/core/styles/themes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:forge/modules/auth/cubit/auth_cubit.dart';
import 'package:forge/modules/auth/cubit/auth_repository.dart';
import 'package:forge/modules/auth/screens/login_screen.dart';
import 'package:on_screen_ruler/on_screen_ruler.dart';
import 'package:forge/core/router/route_generator.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:forge/modules/onboarding/screens/onboarding_screen.dart';

import 'package:forge/core/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  // HydratedBloc.storage.clear();

  await dotenv.load(fileName: '.env');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingCubit>(create: (_) => SettingCubit()),
        BlocProvider<NavigationCubit>(create: (_) => NavigationCubit()),
        BlocProvider<AuthCubit>(create: (_) => AuthCubit(AuthRepository())),
      ],
      child: BlocBuilder<SettingCubit, SettingState>(
        builder: (BuildContext context, SettingState state) {
          return MaterialApp(
            builder: (context, child) {
              return OnScreenRulerWidget(
                gridSize: 29.4,
                gridColor: Colors.red.withOpacity(0.05),
                activateBgColor: Colors.transparent,
                activateIcon: null,
                // show: true,
                child: ResponsiveWrapper.builder(
                  ClampingScrollWrapper.builder(context, child!),
                  maxWidth: 1400,
                  minWidth: 480,
                  defaultScale: true,
                  breakpoints: const [
                    ResponsiveBreakpoint.resize(480, name: MOBILE),
                    ResponsiveBreakpoint.autoScale(800, name: TABLET),
                    ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                    ResponsiveBreakpoint.autoScale(2460, name: '4K'),
                  ],
                ),
              );
            },
            home: state.onboarding
                ? const OnboardingScreen()
                : BlocBuilder<AuthCubit, AuthState>(
                    bloc: context.read<AuthCubit>().setToken(),
                    builder: (context, state) {
                      return state.user != null
                          ? const App()
                          : const LoginScreen();
                    },
                  ),
            initialRoute: '/',
            title: 'PersianSDA Starter',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.light,
            supportedLocales: L10n.all,
            locale: Locale(state.locale),
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.generateRoutes,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}
