import 'package:flutter/material.dart';

import '../widgets/form_section.dart';
import '../widgets/input_tile_number.dart';
import '../widgets/input_tile_option.dart';

class BlastRoomOtherDetail extends StatefulWidget {
  const BlastRoomOtherDetail({super.key});

  @override
  State<BlastRoomOtherDetail> createState() => _BlastRoomOtherDetailState();
}

class _BlastRoomOtherDetailState extends State<BlastRoomOtherDetail> {
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
                title: "Total rated power of all mototrs",
                initialValue: 1500,
                maxValue: 5000,
                minValue: 1,
                gapValue: 5,
                unit: "W",
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
