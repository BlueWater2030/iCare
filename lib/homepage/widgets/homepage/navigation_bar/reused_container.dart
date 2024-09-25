import 'package:flutter/material.dart';

class ReUsedContainer extends StatelessWidget {
  final IconData icon;
  final String text;
  final EdgeInsetsGeometry margin;
  const ReUsedContainer(
      {Key? key, required this.icon, required this.margin, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Icon(
              icon,
              size: 50,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
