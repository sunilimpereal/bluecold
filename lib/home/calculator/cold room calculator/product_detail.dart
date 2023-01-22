import 'package:bluecold/home/calculator/widgets/form_section.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_number.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_option.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => ProductDetailState();
}

class ProductDetailState extends State<ProductDetail> {
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
                title: "Storage Density",
                initialValue: 275,
                maxValue: 1000,
                minValue: 1,
                gapValue: 5,
                unit: "kg/m3",
              ),
              InputTileNumber(
                title: "Quantity",
                initialValue: 0,
                maxValue: 100000,
                minValue: 1,
                gapValue: 5,
                unit: "kg",
              ),
              InputTileNumber(
                title: "Daily Loading Percentage",
                initialValue: 5,
                maxValue: 100,
                minValue: 1,
                gapValue: 5,
                unit: "%",
              ),
              InputTileNumber(
                title: "Product Incoming Temp",
                initialValue: 30,
                maxValue: 100,
                minValue: 1,
                gapValue: 5,
                unit: "°C",
              ),
              InputTileNumber(
                title: "Product Final Temp",
                initialValue: 4,
                maxValue: 30,
                minValue: 1,
                gapValue: 5,
                unit: "°C",
              ),
              InputTileNumber(
                title: "Cooling time",
                initialValue: 24,
                maxValue: 300,
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
