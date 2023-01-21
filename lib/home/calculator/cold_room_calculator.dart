import 'dart:developer';

import 'package:bluecold/home/calculator/ambient_room_detail.dart';
import 'package:bluecold/home/calculator/other_detail.dart';
import 'package:bluecold/home/calculator/product_detail.dart';
import 'package:bluecold/home/calculator/widgets/tab_bar.dart';
import 'package:bluecold/home/calculator/widgets/tab_bar_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColdRoomCalculatorScreen extends StatefulWidget {
  const ColdRoomCalculatorScreen({super.key});

  @override
  State<ColdRoomCalculatorScreen> createState() =>
      _ColdRoomCalculatorScreenState();
}

class _ColdRoomCalculatorScreenState extends State<ColdRoomCalculatorScreen> {
  List<String> tabs = [
    "Ambient & Room",
    "Product",
    "Other",
  ];
  int currentIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(CupertinoIcons.back)),
                    const Text(
                      "Cold Room",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              details(),
            ],
          ),
        ),
      ),
    );
  }

  Widget details() {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height * 0.87,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(children: [
          CalculatorTabBar(
            tabs: tabs,
            currentIndex: currentIndex,
            onChanged: (p0) {
              setState(() {
                pageController.animateToPage(p0,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn);
                Future.delayed(Duration(milliseconds: 500)).then((value) {
                  currentIndex = p0;
                });
              });
            },
          ),
          CalculatorTabView(
              currentIndex: currentIndex,
              onPageChanged: (p0) {
                setState(() {
                  currentIndex = p0;
                });
              },
              pageController: pageController,
              views: const [
                AmbientRoomForm(),
                ProductDetail(),
                OtherDetail(),
              ])
        ]),
      ),
    );
  }

  Widget item(String name) {
    return Container(
      child: Center(child: Text(name)),
    );
  }
}
