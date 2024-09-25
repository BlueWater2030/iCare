import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../paddings_and_sizedboxes/padding.dart';

class DentistLottieContainer extends StatelessWidget {
  const DentistLottieContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Paddings(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffC4EDEF)),
        height: 245,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Dental Care',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '''The Art Of 
Creating 
Smiles 😄''',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  //color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12)),
              width: 180,
              height: 250,
              child: Lottie.asset('lottie/Animation - 1709871524702.json',
                  height: 230, width: 100),
            )
          ],
        ),
      ),
    );
  }
}
