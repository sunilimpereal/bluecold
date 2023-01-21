import 'package:bluecold/home/calculator/widgets/form_section.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_number.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_option.dart';
import 'package:flutter/material.dart';

class OtherDetail extends StatefulWidget {
  const OtherDetail({super.key});

  @override
  State<OtherDetail> createState() => _OtherDetailState();
}

class _OtherDetailState extends State<OtherDetail> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: const [
          FormSection(
            title: "Produt Detail",
            formItems: [
              InputTileOption(
                title: "Door Opening Frequency",
                options: [
                  "Normal",
                ],
              ),
              InputTileNumber(
                title: "No. of persons in room",
                initialValue: 2,
                maxValue: 20,
                minValue: 1,
                gapValue: 5,
                unit: "",
              ),
              InputTileNumber(
                title: "Working hours",
                initialValue: 5,
                maxValue: 24,
                minValue: 1,
                gapValue: 5,
                unit: "hrs",
              ),
              InputTileNumber(
                title: "Total rated power of all mototrs",
                initialValue: 1500,
                maxValue: 5000,
                minValue: 1,
                gapValue: 5,
                unit: "W",
              ),
              InputTileNumber(
                title: "Motor Running hours",
                initialValue: 20,
                maxValue: 100,
                minValue: 1,
                gapValue: 5,
                unit: "hrs",
              ),
              InputTileNumber(
                title: "Lighting",
                initialValue: 10,
                maxValue: 50,
                minValue: 1,
                gapValue: 5,
                unit: "W/m2",
              ),
              InputTileNumber(
                title: "Operating hours",
                initialValue: 6,
                maxValue: 60,
                minValue: 1,
                gapValue: 5,
                unit: "hrs",
              ),
              InputTileNumber(
                title: "Compresseor Operating hours",
                initialValue: 20,
                maxValue: 60,
                minValue: 1,
                gapValue: 5,
                unit: "hrs",
              ),
              InputTileNumber(
                title: "Safety Factor",
                initialValue: 6,
                maxValue: 60,
                minValue: 1,
                gapValue: 5,
                unit: "%",
              ),
            ],
          )
        ],
      ),
    );
  }
}
