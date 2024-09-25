import 'package:project/homepage/widgets/doctor_card.dart';
import 'package:flutter/material.dart';

class SeeAllPage extends StatelessWidget {
  const SeeAllPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<DoctorCard> doctor = [
      DoctorCard(
        image: 'images/doctor.jpg',
        name: 'Omar Mahmoud',
        descriosion: 'A professional Dentist',
        rate: 4.9,
        height: 200,
        width: MediaQuery.of(context).size.width,
      ),
      DoctorCard(
        image: 'images/download.jpg',
        name: 'Mahmoud Kamal',
        descriosion: 'An Advanced Surgeon',
        rate: 4.3,
        height: 200,
        width: MediaQuery.of(context).size.width,
      ),
      DoctorCard(
        image: 'images/images.jpg',
        name: 'Ahmed Mahmoud',
        descriosion: 'An Expert Babys Doctor',
        rate: 5.0,
        height: 200,
        width: MediaQuery.of(context).size.width,
      )
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: Column(children: doctor)),
      ),
    );
  }
}
