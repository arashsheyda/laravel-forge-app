import 'package:flutter/material.dart';
import 'package:forge/core/shared/appbar.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:forge/core/shared/drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/shared/bottombar.dart';
import 'package:forge/core/cubit/navigation/navigation_cubit.dart';
import 'package:forge/modules/admin/server/screens/server_screen.dart';
import 'package:forge/modules/doc/doc_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  late TabController _tabCtrl;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(
      length: pages.length,
      initialIndex: context.read<NavigationCubit>().state.currentIndex,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabCtrl.dispose();
  }

  final pages = [
    const ServerScreen(),
    const DocScreen(),
  ];

  final tabs = [
    {
      'index': 0,
      'icon': 'home',
      'label': 'Servers',
    },
    {
      'index': 1,
      'icon': 'home',
      'label': 'Docs',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      appBar: AppBarWidget(
        title: 'Laravel Forge',
        color: [colorPrimary, colorPrimary.withAlpha(255)],
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/user'),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Stack(
        children: [
          BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
              return TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabCtrl,
                children: pages,
              );
            },
          ),
          BottomBarWidget(tabController: _tabCtrl, tabs: tabs),
        ],
      ),
    );
  }
}
