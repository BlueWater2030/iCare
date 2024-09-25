import 'package:flutter/material.dart';
import '../../homepage/constants/constants.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final IconData icon;
  const MyTextField({
    Key? key,
    required this.obscureText,
    required this.controller,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          onChanged: (value) => kNameEditingController,
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            hintText: label,
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
