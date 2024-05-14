import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.flex = 1,
  });

  final TextEditingController controller;
  final String hint;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.none,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffB7B7B7).withOpacity(0.1),
            ),
          ),
        ),
      ),
    );
  }
}
