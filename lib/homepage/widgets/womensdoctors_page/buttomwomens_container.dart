import 'package:flutter/material.dart';

class ButtomWomensContainer extends StatelessWidget {
  final String weeksLeft;
  const ButtomWomensContainer({Key? key, required this.weeksLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int weeks = 40 - int.parse(weeksLeft);
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width / 1 - 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue.withOpacity(0.9),
        ),
        child: Center(
          child: Text(
            '${weeks.toString()} WEEKS TO GO!',
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
