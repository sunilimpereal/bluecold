import 'dart:developer';

import 'package:bluecold/home/calculator/blast%20room%20calculator/calculator.dart';
import 'package:bluecold/home/calculator/blast%20room%20calculator/data/sharedpref_bastroom.dart';
import 'package:flutter/material.dart';

import '../../../utils/screen.dart';
import '../../profile/widgets/app_bar.dart';
import '../widgets/summary_box.dart';

class BlastRoomResultScreen extends StatefulWidget {
  const BlastRoomResultScreen({super.key});

  @override
  State<BlastRoomResultScreen> createState() => _BlastRoomResultScreenState();
}

class _BlastRoomResultScreenState extends State<BlastRoomResultScreen> {
  SharedPrefBlastRoom blastRoom = sharedPrefsBlastRoom;
  @override
  void initState() {
    super.initState();
  }

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
                          SummaryBoxItem(unit: "\u2103", title: "Ambient tempertaure", value: blastRoom.ambTemp.toString()),
                          SummaryBoxItem(unit: "%", title: "Ambient RH", value: blastRoom.ambRH),
                        ]),
                        SummaryBox(title: "Room Definition", summaryBoxItems: [
                          SummaryBoxItem(unit: "m", title: "Room length", value: blastRoom.externalLength.toString()),
                          SummaryBoxItem(unit: "m", title: "Room width", value: blastRoom.externalWidth.toString()),
                          SummaryBoxItem(unit: "m", title: "Room height", value: blastRoom.externalHeight.toString()),
                          SummaryBoxItem(unit: "mm", title: "Insulation Thickness", value: blastRoom.insulationThickness.toString()),
                          SummaryBoxItem(unit: "", title: "Wall insulation material", value: blastRoom.insulation),
                          SummaryBoxItem(unit: "m \u00B3", title: "Room internal Volume", value: blastRoom.roomInternalVolume),
                          SummaryBoxItem(unit: "", title: "Cold Room Location", value: blastRoom.roomLocation),
                          SummaryBoxItem(unit: "\u2103", title: "Room temperature", value: blastRoom.roomTemperature.toString()),
                          SummaryBoxItem(unit: "%", title: "Room RH", value: blastRoom.roomRH.toString()),
                          SummaryBoxItem(unit: "", title: "Door Opening frequeny", value: blastRoom.doorOpenFreq),
                        ]),
                        SummaryBox(title: "Product Definition", summaryBoxItems: [
                          SummaryBoxItem(unit: "", title: "Product family", value: blastRoom.productFamily),
                          SummaryBoxItem(unit: "", title: "Product", value: blastRoom.productProduct),
                          SummaryBoxItem(unit: "", title: "Product quantity per batch", value: blastRoom.quantityPerBatch.toString()),
                          SummaryBoxItem(unit: "\u2103", title: "product incoming temperature", value: blastRoom.productIncTemp.toString()),
                          SummaryBoxItem(unit: "\u2103", title: "Product final temp", value: "${blastRoom.productFinalTemp}"),
                          SummaryBoxItem(
                            unit: "W/kg*24 h",
                            title: "Respiration heat",
                            value: blastRoom.respirationHeat,
                          ),
                          SummaryBoxItem(unit: "kJ/kg\u2103", title: "Specific heat above freezing", value: blastRoom.specificHeatAboveFreezing),
                          SummaryBoxItem(unit: "kJ/kg\u2103", title: "Specific heat below freezing", value: blastRoom.specificHeatBelowFreezing),
                          SummaryBoxItem(
                            unit: "\u2103",
                            title: "Freezing temp",
                            value: blastRoom.freezingTemp,
                          ),
                          SummaryBoxItem(
                            unit: "kJ/kg",
                            title: "latent heat of freezing",
                            value: blastRoom.latentHeatOFFreezing,
                          ),
                        ]),
                        SummaryBox(title: "Heat Load Results", summaryBoxItems: [
                          SummaryBoxItem(unit: "kW", title: "Transmission Load", value: blastRoom.transmissionLoad),
                          SummaryBoxItem(unit: "kW", title: "Product Load", value: blastRoom.productLoad),
                          SummaryBoxItem(unit: "kW", title: "Infiltration and other Load", value: blastRoom.infiltrationLoad),
                          SummaryBoxItem(unit: "kW", title: "Internal Load", value: blastRoom.internalLoad.toString()),
                          SummaryBoxItem(unit: "%", title: "Safety factor", value: blastRoom.safetyFactor.toString()),
                          SummaryBoxItem(unit: "h", title: "Pull Down Time", value: blastRoom.pullDownTime.toString()),
                          SummaryBoxItem(unit: "kW", title: "Hourly equipment load", value: blastRoom.hourlyEqipmentLoad),
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