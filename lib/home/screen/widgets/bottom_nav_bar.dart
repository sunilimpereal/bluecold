import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (i) {
          log(i.toString());
        },
        items: const [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "user",
            icon: Icon(Icons.usb_rounded),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.circle_rounded),
          ),
        ]);
  }
}
