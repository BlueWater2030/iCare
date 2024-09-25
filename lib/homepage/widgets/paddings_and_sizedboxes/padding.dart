import 'package:flutter/material.dart';

class Paddings extends StatelessWidget {
  final Widget child;
  const Paddings({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: child,
    );
  }
}
