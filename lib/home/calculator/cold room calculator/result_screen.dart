import 'dart:developer';

import 'package:bluecold/home/calculator/widgets/summary_box.dart';
import 'package:bluecold/home/profile/widgets/app_bar.dart';
import 'package:bluecold/utils/screen.dart';
import 'package:bluecold/utils/sharedpref_coldroom.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  SharedPrefColdRoom coldRoom = sharedPrefsColdRoom;
  @override
  Widget build(BuildContext context) {
    return Screen(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: [
                const CustomAppBar(title: "Heat Load Summary"),
                GestureDetector(
                  onLongPressMoveUpdate: (details) {
                    log("message`");
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height - 100,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SummaryBox(title: "Ambient Definition", summaryBoxItems: [
                            SummaryBoxItem(title: "Ambient tempertaure", value: coldRoom.externalHeight.toString()),
                            SummaryBoxItem(title: "Ambient RH", value: coldRoom.ambRH),
                          ]),
                          SummaryBox(title: "Room Definition", summaryBoxItems: [
                            SummaryBoxItem(title: "Room length", value: "40.0 C"),
                            SummaryBoxItem(title: "Room width", value: "60%"),
                            SummaryBoxItem(title: "Room height", value: "60%"),
                            SummaryBoxItem(title: "Insulation Thickness", value: "60%"),
                            SummaryBoxItem(title: "Wall insulation material", value: "60%"),
                            SummaryBoxItem(title: "Room internal Volume", value: "60%"),
                            SummaryBoxItem(title: "Cold Room Location", value: "60%"),
                            SummaryBoxItem(title: "Room temperature", value: "60%"),
                            SummaryBoxItem(title: "Room RH", value: "60%"),
                            SummaryBoxItem(title: "Door Opening frequeny", value: "60%"),
                          ]),
                          SummaryBox(title: "Product Definition", summaryBoxItems: [
                            SummaryBoxItem(title: "Product", value: "40.0 C"),
                            SummaryBoxItem(title: "Product family", value: "40.0 C"),
                            SummaryBoxItem(title: "Product quantity", value: "40.0 C"),
                            SummaryBoxItem(title: "Product storage density", value: "40.0 C"),
                            SummaryBoxItem(title: "Daily product loading", value: "40.0 C"),
                            SummaryBoxItem(title: "product incoming temperature", value: "40.0 C"),
                            SummaryBoxItem(title: "Product final temp", value: "40.0 C"),
                            SummaryBoxItem(title: "Specific heat above freezing", value: "40.0 C"),
                            SummaryBoxItem(title: "Specific heat below freezing", value: "40.0 C"),
                            SummaryBoxItem(
                              title: "Freezing temp",
                              value: "40.0 C",
                            ),
                            SummaryBoxItem(
                              title: "latent heat of freezing",
                              value: "40.0 C",
                            ),
                            SummaryBoxItem(
                              title: "Respiration heat",
                              value: "40.0 C",
                            ),
                          ]),
                          SummaryBox(title: "Heat Load Results", summaryBoxItems: [
                            SummaryBoxItem(title: "Transmission Load", value: ""),
                            SummaryBoxItem(title: "Product Load", value: ""),
                            SummaryBoxItem(title: "Infiltration Load", value: ""),
                            SummaryBoxItem(title: "Safety factor", value: ""),
                            SummaryBoxItem(title: "Cooling time", value: ""),
                            SummaryBoxItem(title: "Compressor operating time", value: ""),
                            SummaryBoxItem(title: "Hourly equipment load", value: ""),
                          ]),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
