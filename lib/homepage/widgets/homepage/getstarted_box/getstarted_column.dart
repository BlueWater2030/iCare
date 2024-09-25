import 'package:flutter/material.dart';

class GetStartedColumn extends StatelessWidget {
  const GetStartedColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'How do you feel?',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Fill out your medical card right now',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.9),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Text(
              'Get started',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
