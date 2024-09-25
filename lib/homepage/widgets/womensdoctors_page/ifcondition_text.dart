import 'package:project/homepage/widgets/womensdoctors_page/constants/constants.dart';
import 'package:flutter/material.dart';

class IfConditionText extends StatelessWidget {
  final String label;
  final String label2;
  const IfConditionText({Key? key, required this.label, required this.label2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            label,
            style: const TextStyle(color: Color(0xff608EA8), fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label2,
          style: babyBodyStyle,
        )
      ],
    );
  }
}
