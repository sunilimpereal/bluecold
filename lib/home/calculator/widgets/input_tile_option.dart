import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTileOption extends StatefulWidget {
  final String title;
  final List<String> options;
  final Function(String)? onChanged;
  const InputTileOption({
    super.key,
    required this.title,
    required this.options,
    this.onChanged,
  });

  @override
  State<InputTileOption> createState() => _InputTileOptionState();
}

class _InputTileOptionState extends State<InputTileOption> {
  bool isActive = false;
  TextStyle activeStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
  TextStyle inActiveStyle = const TextStyle(color: Colors.black);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      child: Column(
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.grey.shade100.withOpacity(0.6),
              ),
              borderRadius: BorderRadius.circular(0.0),
            ),
            tileColor: isActive ? Colors.blue.shade100.withOpacity(0.2) : null,
            enableFeedback: true,
            title: Text(widget.title, style: isActive ? activeStyle : inActiveStyle),
            // scroll selector
            trailing: Container(
              height: 33,
              width: MediaQuery.of(context).size.width * 0.35,
              alignment: Alignment.centerRight,
              child: CupertinoPicker(
                useMagnifier: true,
                magnification: 1.1,
                itemExtent: 33,
                diameterRatio: 500,
                onSelectedItemChanged: (value) {
                  widget.onChanged!(widget.options[value]);
                },
                children: widget.options.map((e) => text(e)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget text(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.33,
        child: Text(
          text,
          overflow: TextOverflow.clip,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
    );
  }
}
