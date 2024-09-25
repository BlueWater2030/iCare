import 'package:project/homepage/widgets/dentistpage/doctors_row.dart';
import 'package:flutter/material.dart';
import '../../pages/home/homepage.dart';

class BookAppointmentPage extends StatelessWidget {
  const BookAppointmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back)),
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
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.teal,
              ),
              height: 100,
              width: 350,
              child: const Center(
                child: Text(
                  '''EveryWhere you can find a doctor to help you''',
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
              height: 500,
              width: 400,
              child: ListView(
                children: const [
                  DentistDoctorsRow(
                    imagepath: 'images/doctor.jpg',
                    name: 'Ahmed Hossam',
                    desc: 'A Very Good Dentist',
                    phoneNumber: '01150044446',
                  ),
                  DentistDoctorsRow(
                    imagepath: 'images/download.jpg',
                    name: 'Hesham Rashed',
                    desc: 'Suggested',
                    phoneNumber: '01221134935',
                  ),
                  DentistDoctorsRow(
                    imagepath: 'images/images.jpg',
                    name: 'Kareem Bakeer',
                    desc: 'Expert in dentistry',
                    phoneNumber: '01017499994',
                  ),
                  DentistDoctorsRow(
                    imagepath: 'images/femaledoc.jpg',
                    name: 'Eman Tantawy',
                    desc: 'An Advanced Doctor',
                    phoneNumber: '01062078492',
                  ),
                  DentistDoctorsRow(
                    imagepath: 'images/femaledoctor.jpg',
                    name: 'Malak Badawi',
                    desc: 'A Cool Doctor',
                    phoneNumber: '01221711566',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
