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
        body: Center(
          child: Column(
            children: [
              const CustomAppBar(title: "Heat Load Summary"),
              GestureDetector(
                onLongPressMoveUpdate: (details) {
                  log("message`");
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 100,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SummaryBox(title: "Ambient Definition", summaryBoxItems: [
                          SummaryBoxItem(title: "Ambient tempertaure", value: coldRoom.ambTemp.toString()),
                          SummaryBoxItem(title: "Ambient RH", value: coldRoom.ambRH),
                        ]),
                        SummaryBox(title: "Room Definition", summaryBoxItems: [
                          SummaryBoxItem(title: "Room length", value: coldRoom.externalLength.toString()),
                          SummaryBoxItem(title: "Room width", value: coldRoom.externalWidth.toString()),
                          SummaryBoxItem(title: "Room height", value: coldRoom.externalHeight.toString()),
                          SummaryBoxItem(title: "Insulation Thickness", value: coldRoom.insulationThickness.toString()),
                          SummaryBoxItem(title: "Wall insulation material", value: coldRoom.insulation),
                          SummaryBoxItem(title: "Room internal Volume", value: "60%"),
                          SummaryBoxItem(title: "Cold Room Location", value: coldRoom.roomLocation),
                          SummaryBoxItem(title: "Room temperature", value: coldRoom.roomTemperature.toString()),
                          SummaryBoxItem(title: "Room RH", value: coldRoom.roomRH.toString()),
                          SummaryBoxItem(title: "Door Opening frequeny", value: "60%"), ////TODO: Door Opening frequeny
                        ]),
                        SummaryBox(title: "Product Definition", summaryBoxItems: [
                          SummaryBoxItem(title: "Product", value: coldRoom.productProduct),
                          SummaryBoxItem(title: "Product family", value: coldRoom.productFamily),
                          SummaryBoxItem(title: "Product quantity", value: coldRoom.quantity.toString()),
                          SummaryBoxItem(title: "Product storage density", value: coldRoom.storageDensity.toString()),
                          SummaryBoxItem(title: "Daily product loading", value: coldRoom.dailyLoading.toString()),
                          SummaryBoxItem(title: "product incoming temperature", value: coldRoom.productIncTemp.toString()),
                          SummaryBoxItem(title: "Product final temp", value: "${coldRoom.productFinalTemp}"),
                          SummaryBoxItem(title: "Specific heat above freezing", value: ""), //TODO specific heat
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
    );
  }
}
