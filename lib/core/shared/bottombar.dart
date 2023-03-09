import 'package:flutter/material.dart';
import 'package:forge/core/styles/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forge/core/shared/widgets/bottombar_item.dart';
import 'package:forge/core/cubit/navigation/navigation_cubit.dart';

class BottomBarWidget extends StatelessWidget {
  final TabController tabController;
  final List tabs;
  const BottomBarWidget({
    super.key,
    required this.tabController,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return Material(
          color: Theme.of(context).colorScheme.background,
          child: TabBar(
            onTap: (index) =>
                context.read<NavigationCubit>().changeBottomNavBar(index),
            labelColor: Theme.of(context).colorScheme.onBackground,
            indicatorColor: colorPrimary,
            controller: tabController,
            tabs: [
              for (var tab in tabs)
                BottomBarItem(
                  currentIndex: state.currentIndex,
                  index: tab['index'],
                  icon: tab['icon'],
                  label: tab['label'],
                ),
            ],
          ),
        );
      },
    );
  }
}
