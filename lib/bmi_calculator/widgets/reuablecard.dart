import 'package:flutter/material.dart';

class ReuableCard extends StatelessWidget {
  final VoidCallback onClick;
  final Widget child;
  final Color colour;
  const ReuableCard(
      {Key? key,
      required this.child,
      required this.onClick,
      required this.colour})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: colour),
          child: child),
    );
  }
}
