import 'package:flutter/material.dart';

class AppInputField extends StatefulWidget {
  final String label;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final Function(String) onSubmitted;
  final String? Function(String?)? validator;
  const AppInputField({
    super.key,
    required this.label,
    this.textInputType = TextInputType.text,
    required this.textEditingController,
    required this.onSubmitted,
    this.validator,
  });

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  @override
  Widget build(BuildContext context) {
    //TODO:
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      child: TextFormField(
        controller: widget.textEditingController,
        keyboardType: widget.textInputType,
        // onSubmitted: widget.onSubmitted,
        style: const TextStyle(
          fontSize: 18,
        ),
        validator: widget.validator,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(
              // fontSize: 18,
              ),
        ),
      ),
    );
  }
}
