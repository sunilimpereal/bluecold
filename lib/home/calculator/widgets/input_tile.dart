import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTileNumber extends StatefulWidget {
  final String title;
  final double initialValue;
  final double minValue;
  final double maxValue;
  final double gapValue;
  final String unit;
  const InputTileNumber({
    super.key,
    required this.title,
    required this.initialValue,
    required this.gapValue,
    required this.maxValue,
    required this.minValue,
    required this.unit,
  });

  @override
  State<InputTileNumber> createState() => _InputTileNumberState();
}

class _InputTileNumberState extends State<InputTileNumber> {
  TextEditingController _controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  bool hasFocus = false;
  int value = 5;
  double percentage = 0;
  bool isActive = false;

  TextStyle activeStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
  TextStyle inActiveStyle = const TextStyle();
  @override
  void initState() {
    focusNode.addListener(() {
      setState(() {});
    });
    _controller.text = widget.initialValue.ceil().toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressMoveUpdate: (details) {
        // log(details.offsetFromOrigin.toString());
        setState(() {
          percentage = ((details.localPosition.dx /
              MediaQuery.of(context).size.width *
              1.2));
          value = (widget.maxValue * percentage).ceil();
          _controller.text = value.toString();
        });
      },
      onLongPress: () {
        HapticFeedback.lightImpact();
        setState(() {
          isActive = true;
        });
      },
      onLongPressUp: () {
        setState(() {
          isActive = false;
        });
      },
      child: ListTile(
        tileColor: isActive ? Colors.blue.shade100.withOpacity(0.2) : null,
        enableFeedback: true,
        title: Text(widget.title,
            style:
                isActive || focusNode.hasFocus ? activeStyle : inActiveStyle),
        trailing: Container(
          width: 120,
          alignment: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 70,
                alignment: Alignment.centerRight,
                child: TextField(
                  controller: _controller,
                  focusNode: focusNode,
                  textAlign: TextAlign.end,
                  style: isActive || focusNode.hasFocus
                      ? activeStyle
                      : inActiveStyle,
                  decoration: const InputDecoration(border: InputBorder.none),
                  keyboardType: TextInputType.number,
                ),
              ),
              Text(" ${widget.unit}",
                  style: isActive || focusNode.hasFocus
                      ? activeStyle
                      : inActiveStyle)
            ],
          ),
        ),
      ),
    );
  }
}
