import 'package:project/homepage/pages/home/homepage.dart';
import 'package:flutter/material.dart';

class BrainDoctorArrow extends StatelessWidget {
  const BrainDoctorArrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const MyHomePage()),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: SizedBox(
                child: Icon(Icons.home, size: 35),
              ),
            ),
          ),
        )
      ],
    );
  }
}
