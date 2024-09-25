import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Widget navigate;
  const BottomButton({Key? key, required this.text, required this.navigate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => navigate));
      },
      child: Container(
        alignment: Alignment.center,
        height: 65,
        color: Colors.blue,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
