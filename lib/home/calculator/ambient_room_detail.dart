import 'package:bluecold/home/calculator/widgets/form_section.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_number.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_option.dart';
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
        child: Column(
          children: const [
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
                ),
                InputTileNumber(
                  title: "External Width",
                  initialValue: 5,
                  maxValue: 10,
                  minValue: 0,
                  gapValue: 1,
                  unit: "m",
                ),
                InputTileNumber(
                  title: "External Height",
                  initialValue: 5,
                  maxValue: 10,
                  minValue: 0,
                  gapValue: 1,
                  unit: "m",
                ),
                InputTileNumber(
                  title: "Room Temperature",
                  initialValue: 2,
                  maxValue: 100,
                  minValue: 0,
                  gapValue: 1,
                  unit: "°C",
                ),
                InputTileOption(
                  title: "Insulation Thickness",
                  options: [
                    "60 mm",
                    "80 mm",
                    "100 mm",
                    "120 mm",
                    "150 mm",
                  ],
                ),
                InputTileOption(
                  title: "Insulation",
                  options: [
                    "PUF 40kg/m3",
                    "PS 56kg/m3",
                    "PS 56kg/m3",
                  ],
                )
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
                ),
                InputTileOption(
                  title: "RH",
                  options: [
                    "60 %",
                    "50 %",
                  ],
                )
              ],
            )
          ],
        ));
  }
}
