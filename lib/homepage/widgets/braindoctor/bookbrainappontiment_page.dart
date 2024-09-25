import 'package:project/authinification_page/constants/registerpage_constants.dart';
import 'package:project/homepage/widgets/braindoctor/arrowback_homepage.dart';
import 'package:project/homepage/widgets/dentistpage/doctors_row.dart';
import 'package:flutter/material.dart';

class BookBrainAppointementPage extends StatelessWidget {
  const BookBrainAppointementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRBackGroundColor,
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const BrainDoctorArrow(),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[400],
              borderRadius: BorderRadius.circular(12),
            ),
            width: MediaQuery.of(context).size.width - 50,
            height: 100,
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Here you can find the best Neurologists Doctor',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const DentistDoctorsRow(
            imagepath: 'images/doctor.jpg',
            name: 'Mohamed Talaat',
            desc: 'A Very Good Dentist',
            phoneNumber: '01245562626',
          ),
          const DentistDoctorsRow(
            imagepath: 'images/download.jpg',
            name: 'Wael Mahmoud Ezzat',
            desc: 'Suggested',
            phoneNumber: '01221134935',
          ),
          const DentistDoctorsRow(
            imagepath: 'images/images.jpg',
            name: 'Steven Emile',
            desc: 'Expert in dentistry',
            phoneNumber: '01017499994',
          ),
          const DentistDoctorsRow(
            imagepath: 'images/femaledoc.jpg',
            name: 'Asmaa Mostafa Eissa',
            desc: 'An Advanced Doctor',
            phoneNumber: '01062078492',
          ),
          const DentistDoctorsRow(
            imagepath: 'images/femaledoctor.jpg',
            name: 'Manar Ahmed Shawky',
            desc: 'A Cool Doctor',
            phoneNumber: '01221711566',
          ),
        ],
      )),
    );
  }
}
