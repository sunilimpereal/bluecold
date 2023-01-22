import 'package:bluecold/home/calculator/widgets/input_tile_option.dart';
import 'package:flutter/material.dart';

import '../widgets/form_section.dart';
import '../widgets/input_tile_number.dart';

class BlastRoomProductDetail extends StatefulWidget {
  const BlastRoomProductDetail({super.key});

  @override
  State<BlastRoomProductDetail> createState() => _BlastRoomProductDetailState();
}

class _BlastRoomProductDetailState extends State<BlastRoomProductDetail> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: const [
          FormSection(
            title: "Produt Detail",
            formItems: [
              InputTileOption(
                title: "Family",
                options: [
                  "Beef",
                  "Candy",
                  "Diary Products",
                  "Fish",
                  "Fruits",
                  "Juice and Beve",
                  "Lamb",
                  "Miscellaneous",
                  "Nuts,Shelled",
                  "Pork",
                  "Poluty Products",
                  "Sausage",
                  "Vegetables",
                ],
              ),
              InputTileOption(
                title: "Product",
                options: [
                  "Vegetables-Mean",
                  "",
                ],
              ),
              InputTileNumber(
                title: "Quantity per batch",
                initialValue: 2000,
                maxValue: 10000,
                minValue: 1,
                gapValue: 5,
                unit: "kg",
              ),
              InputTileNumber(
                title: "Product incoming temp",
                initialValue: 4,
                maxValue: 100,
                minValue: 1,
                gapValue: 5,
                unit: "°C",
              ),
              InputTileNumber(
                title: "Product final",
                initialValue: -18,
                maxValue: -100,
                minValue: 1,
                gapValue: 5,
                unit: "°C",
              ),
              InputTileNumber(
                title: "Pull down time",
                initialValue: 8,
                maxValue: 100,
                minValue: 1,
                gapValue: 5,
                unit: "hrs",
              ),
            ],
          )
        ],
      ),
    );
  }
}
