import 'package:project/authinification_page/auth/authpage.dart';
import 'package:flutter/material.dart';

class FirstPageBottomns extends StatelessWidget {
  final String label;
  const FirstPageBottomns({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AuthPage(),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(20),
        ),
        width: MediaQuery.of(context).size.width - 100,
        height: 80,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
