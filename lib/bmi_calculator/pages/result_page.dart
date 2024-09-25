import 'package:project/authinification_page/constants/registerpage_constants.dart';
import 'package:project/homepage/pages/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../widgets/bottom_button.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final String upperText;
  final String bmiText;
  final String downText;

  const ResultPage(
      {Key? key,
      required this.upperText,
      required this.bmiText,
      required this.downText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRBackGroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
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
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 250,
                width: 250,
                child: Lottie.asset('lottie/88284-doctor-prescription.json',
                    animate: false),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'YOUR RESULT',
                style: GoogleFonts.bebasNeue(fontSize: 60),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'OverAll',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: Text(
                      upperText,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Your BMI',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40),
                    child: Text(
                      bmiText,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'A little comment',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Text(
                      downText,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            const BottomButton(
              navigate: MyInputPage(),
              text: 'Re-Calculate',
            )
          ],
        ),
      ),
    );
  }
}
