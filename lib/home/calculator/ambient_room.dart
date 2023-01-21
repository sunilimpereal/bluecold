import 'package:bluecold/home/calculator/widgets/input_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmbientRoomForm extends StatefulWidget {
  const AmbientRoomForm({super.key});

  @override
  State<AmbientRoomForm> createState() => _AmbientRoomFormState();
}

class _AmbientRoomFormState extends State<AmbientRoomForm> {
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Container(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
              child: Container(
                color: Colors.white10,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      "Cold Room details",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        isOpen
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                      ),
                    )
                  ],
                ),
              ),
            ),
            isOpen ? coldRoomDetails() : Container()
          ],
        ),
      ),
    );
  }

  Widget coldRoomDetails() {
    return Column(
      children: const [
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
      ],
    );
  }
}
