import 'package:bluecold/home/calculator/widgets/form_section.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_number.dart';
import 'package:bluecold/home/calculator/widgets/input_tile_option.dart';
import 'package:bluecold/main.dart';
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
        children: [
          FormSection(
            title: "Produt Detail",
            formItems: [
              InputTileOption(
                title: "Family",
                options: const [
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
                onChanged: (value) {
                  sharedPrefColdRoom.setProductFamily(value);
                },
              ),
              InputTileOption(
                title: "Product",
                options: const [
                  "Vegetables-Mean",
                  "",
                ],
                onChanged: (value) {
                  sharedPrefColdRoom.setProductProduct(value);
                },
              ),
              InputTileNumber(
                title: "Storage Density",
                initialValue: 275,
                maxValue: 1000,
                minValue: 1,
                gapValue: 5,
                unit: "kg/m3",
                onChanged: (value) {
                  sharedPrefColdRoom.setStorageDensity(double.parse(value));
                },
              ),
              InputTileNumber(
                title: "Quantity",
                initialValue: 0,
                maxValue: 100000,
                minValue: 1,
                gapValue: 5,
                unit: "kg",
                onChanged: (value) {
                  sharedPrefColdRoom.setQuantity(double.parse(value));
                },
              ),
              InputTileNumber(
                title: "Daily Loading Percentage",
                initialValue: 5,
                maxValue: 100,
                minValue: 1,
                gapValue: 5,
                unit: "%",
                onChanged: (value) {
                  sharedPrefColdRoom.setDailyLoadPerc(double.parse(value));
                },
              ),
              InputTileNumber(
                title: "Product Incoming Temp",
                initialValue: 30,
                maxValue: 100,
                minValue: 1,
                gapValue: 5,
                unit: "°C",
                onChanged: (value) {
                  sharedPrefColdRoom.setProductIncTemp(double.parse(value));
                },
              ),
              InputTileNumber(
                title: "Product Final Temp",
                initialValue: 4,
                maxValue: 30,
                minValue: 1,
                gapValue: 5,
                unit: "°C",
                onChanged: (value) {
                  sharedPrefColdRoom.setProductFinalTemp(double.parse(value));
                },
              ),
              InputTileNumber(
                title: "Cooling time",
                initialValue: 24,
                maxValue: 300,
                minValue: 1,
                gapValue: 5,
                unit: "hrs",
                onChanged: (value) {
                  sharedPrefColdRoom.setCoolingTime(double.parse(value));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
