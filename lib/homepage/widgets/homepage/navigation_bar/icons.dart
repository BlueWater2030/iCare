import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback func;

  const NavIcon({Key? key, required this.icon, required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Icon(
        icon,
        size: 30,
      ),
    );
  }
}
