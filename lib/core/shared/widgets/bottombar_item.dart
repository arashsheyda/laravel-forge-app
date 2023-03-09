import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  final int index;
  final String icon;
  final String label;
  final int currentIndex;
  const BottomBarItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.index,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      child: Tab(
        text: label,
        // icon: Icon(
        //   Icons.home,
        //   color: currentIndex == index ? colorPrimary : Colors.grey,
        // ),
      ),
    );
  }
}
