import 'package:project/authinification_page/constants/registerpage_constants.dart';
import 'package:project/bmi_calculator/pages/result_page.dart';
import 'package:project/bmi_calculator/widgets/reuablecard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../bmiconst/constants.dart';
import '../widgets/bottom_button.dart';
import '../widgets/iconcontent.dart';
import '../widgets/quiz_brain.dart';
import '../widgets/rawbutton.dart';

class MyInputPage extends StatefulWidget {
  const MyInputPage({Key? key}) : super(key: key);

  @override
  State<MyInputPage> createState() {
    return MyWork();
  }
}

enum Gender {
  male,
  female,
}

Gender? selectedGender;
int weight = 60;
int age = 14;
int sliderCurrentHeight = 180;

class MyWork extends State<MyInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRBackGroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                     Align(
                         alignment: Alignment.centerLeft,
                         child: Padding(
                           padding: const EdgeInsets.only(left :8.0),
                           child: GestureDetector(
                               onTap: () {
                                 Navigator.pop(context);
                               },
                               child: const Icon(Icons.arrow_back_ios)),
                         )),
                  Text(
                    'BMI Calculator',
                    style: GoogleFonts.bebasNeue(fontSize: 50),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuableCard(
                      onClick: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kActiveColor
                          : kinActiveColor,
                      child: const IconContent(
                          icon: FontAwesomeIcons.mars, label: 'MALE'),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: ReuableCard(
                      colour: selectedGender == Gender.female
                          ? kActiveColor
                          : kinActiveColor,
                      onClick: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: const IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ReuableCard(
                colour: kinActiveColor,
                onClick: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('HEIGHT'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          sliderCurrentHeight.toString(),
                          style: kNumberTextStyle,
                        ),
                        const Text('cm'),
                      ],
                    ),
                    Slider(
                      activeColor: Colors.blue,
                      thumbColor: Colors.blue,
                      value: sliderCurrentHeight.toDouble(),
                      min: 100,
                      max: 300,
                      onChanged: (double newValue) {
                        setState(() {
                          sliderCurrentHeight = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ReuableCard(
                      onClick: () {},
                      colour: kinActiveColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('WEIGHT'),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RawButton(
                                  onClick: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: FontAwesomeIcons.plus),
                              const SizedBox(
                                width: 10,
                              ),
                              RawButton(
                                  onClick: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: FontAwesomeIcons.minus),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ReuableCard(
                            colour: kinActiveColor,
                            onClick: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('AGE'),
                                Text(
                                  age.toString(),
                                  style: kNumberTextStyle,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RawButton(
                                          onClick: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          icon: FontAwesomeIcons.plus),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      RawButton(
                                          onClick: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                          icon: FontAwesomeIcons.minus),
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            BottomButton(
              navigate: ResultPage(
                bmiText: calc.getBMICalc(),
                downText: calc.getDownText(),
                upperText: calc.getUpperText(),
              ),
              text: 'CALCULATE',
            )
          ],
        ),
      ),
    );
  }

  QuizBrain calc = QuizBrain(height: sliderCurrentHeight, weight: weight);
}
