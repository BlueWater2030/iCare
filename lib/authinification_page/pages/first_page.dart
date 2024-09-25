import 'package:project/authinification_page/constants/registerpage_constants.dart';
import 'package:project/authinification_page/widgets/firstpage_bottoms.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRBackGroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'iCare',
                style: GoogleFonts.quicksand(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[900]),
              ),
            ),
            Text(
              'Everywhere you can find a doctor',
              style: TextStyle(color: Colors.cyan[300], fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            const FirstPageBottomns(
              label: 'LogIn',
            ),
            const SizedBox(
              height: 15,
            ),
            const FirstPageBottomns(
              label: 'SignUp',
            )
          ],
        ),
      ),
    );
  }
}
