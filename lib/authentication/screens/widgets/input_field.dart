import 'package:flutter/material.dart';

class AppInputField extends StatefulWidget {
  final String label;
  final TextInputType textInputType;
  const AppInputField({
    super.key,
    required this.label,
    this.textInputType = TextInputType.text,
  });

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  @override
  Widget build(BuildContext context) {
    //TODO:
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        keyboardType: widget.textInputType,
        style: TextStyle(
          fontSize: 18,
        ),
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
