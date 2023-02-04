import 'dart:developer';

import 'package:bluecold/home/profile/profile_screen.dart';
import 'package:bluecold/home/screen/home_screen.dart';
import 'package:bluecold/home/screen/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../utils/screen.dart';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({
    super.key,
  });

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Scaffold(
        body: getScreens(index),
        bottomNavigationBar: BottomNavBar(
          currentIndex: index,
          onChanged: (i) {
            log(i.toString());
            setState(
              () {
                index = i;
              },
            );
          },
        ),
      ),
    );
  }

  Widget getScreens(int i) {
    switch (i) {
      case 0:
        return const HomeScreen();
      case 1:
        return const ProfileScreen();

      default:
        return const HomeScreen();
    }
  }
}
