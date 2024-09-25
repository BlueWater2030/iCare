import 'package:flutter/material.dart';

import '../bmiconst/constants.dart';

class RawButton extends StatelessWidget {
  final VoidCallback onClick;
  final IconData icon;
  const RawButton({Key? key, required this.onClick, required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      shape: const CircleBorder(),
      fillColor: kActiveColor,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
