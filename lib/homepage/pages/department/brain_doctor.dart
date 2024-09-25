import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BrainDoctorPage extends StatelessWidget {
  const BrainDoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back)),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.cyanAccent[200],
                borderRadius: BorderRadius.circular(12),
              ),
              width: MediaQuery.of(context).size.width - 50,
              height: 100,
              child: const Center(
                child: Text(
                  'Dont worry we are here for you',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 200,
              child: Lottie.asset('lottie/94264-brain.json', fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
