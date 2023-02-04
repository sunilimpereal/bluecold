import 'dart:developer';

import 'package:bluecold/home/calculator/widgets/form_section.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_number.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_option.dart';
import 'package:bluecold/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmbientRoomForm extends StatefulWidget {
  const AmbientRoomForm({super.key});

  @override
  State<AmbientRoomForm> createState() => _AmbientRoomFormState();
}

class _AmbientRoomFormState extends State<AmbientRoomForm> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              FormSection(
                title: "Cold Room Details",
                formItems: [
                  InputTileNumber(
                    title: "External Length",
                    initialValue: 5,
                    maxValue: 10,
                    minValue: 0,
                    gapValue: 1,
                    unit: "m",
                    onChanged: (value) {
                      sharedPrefColdRoom.setExternalLength(double.parse(value));
                    },
                  ),
                  InputTileNumber(
                    title: "External Width",
                    initialValue: 5,
                    maxValue: 10,
                    minValue: 0,
                    gapValue: 1,
                    unit: "m",
                    onChanged: (value) {
                      sharedPrefColdRoom.setExternalWidth(double.parse(value));
                    },
                  ),
                  InputTileNumber(
                    title: "External Height",
                    initialValue: 5,
                    maxValue: 10,
                    minValue: 0,
                    gapValue: 1,
                    unit: "m",
                    onChanged: (value) {
                      sharedPrefColdRoom.setExternalHeight(double.parse(value));
                    },
                  ),
                  InputTileOption(
                    title: "Room Location",
                    options: const [
                      "Outside",
                      "Inside",
                    ],
                    onChanged: (value) {
                      sharedPrefColdRoom.setRoomLocation(value);
                    },
                  ),
                  InputTileNumber(
                    title: "Room Temperature",
                    initialValue: 2,
                    maxValue: 100,
                    minValue: 0,
                    gapValue: 1,
                    unit: "°C",
                    onChanged: (value) {
                      sharedPrefColdRoom.setRoomTemperature(double.parse(value));
                    },
                  ),
                  InputTileNumber(
                    title: "Room RH",
                    initialValue: 75,
                    maxValue: 100,
                    minValue: 0,
                    gapValue: 1,
                    unit: "%",
                    onChanged: (value) {
                      sharedPrefColdRoom.setRoomRH(value);
                    },
                  ),
                  InputTileOption(
                    title: "Insulation Thickness",
                    options: const [
                      "60 mm",
                      "80 mm",
                      "100 mm",
                      "120 mm",
                      "150 mm",
                    ],
                    onChanged: (value) {
                      sharedPrefColdRoom.setInsulationThickness(double.parse(value.replaceAll(" mm", "")));
                    },
                  ),
                  InputTileOption(
                    title: "Insulation",
                    options: const [
                      "PUF 40kg/m3",
                      "PS 56kg/m3",
                      "PS 56kg/m3",
                    ],
                    onChanged: (value) {
                      sharedPrefColdRoom.setInsulation(value);
                    },
                  ),
                ],
              ),
              FormSection(
                title: "Ambient Details",
                formItems: [
                  InputTileNumber(
                    title: "Ambient Temperature",
                    initialValue: 5,
                    maxValue: 10,
                    minValue: 0,
                    gapValue: 1,
                    unit: "m",
                    onChanged: (value) {
                      sharedPrefColdRoom.setAmbTemp(double.parse(value));
                    },
                  ),
                  InputTileOption(
                    title: "RH",
                    options: const [
                      "60 %",
                      "50 %",
                    ],
                    onChanged: (value) {
                      sharedPrefColdRoom.setAmbRH(value.replaceAll(" %", ""));
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}
