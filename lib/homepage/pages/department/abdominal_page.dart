import 'package:project/authinification_page/constants/registerpage_constants.dart';
import 'package:project/homepage/widgets/abdominal/doctors_containers.dart';
import 'package:flutter/material.dart';

class AbdominalPage extends StatelessWidget {
  const AbdominalPage({Key? key}) : super(key: key);

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
                color: Colors.deepPurple[200],
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width - 50,
              height: 100,
              child: Center(
                child: Text(
                  '''the health is the condition of 
wisdom and the sign is cheerfulness and opening''',
                  style: TextStyle(fontSize: 18, color: Colors.blue[50]),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 500,
              width: 400,
              child: ListView(
                children: const [
                  AbdominalDoctorContainer(
                    imagepath: 'images/doctor.jpg',
                    name: 'Ahmed A Ghalwash',
                    desc: 'A Good Gastroenterologist',
                    phoneNumber: '16676',
                  ),
                  AbdominalDoctorContainer(
                    imagepath: 'images/download.jpg',
                    name: 'Ahmed Taiee',
                    desc: 'Suggested',
                    phoneNumber: '16589',
                  ),
                  AbdominalDoctorContainer(
                    imagepath: 'images/images.jpg',
                    name: 'Hazem Sabry',
                    desc: 'Expert in dentistry',
                    phoneNumber: '16778',
                  ),
                  AbdominalDoctorContainer(
                    imagepath: 'images/femaledoc.jpg',
                    name: 'Noha ElWakil',
                    desc: 'An Advanced Doctor',
                    phoneNumber: '16554',
                  ),
                  AbdominalDoctorContainer(
                    imagepath: 'images/femaledoctor.jpg',
                    name: 'Rabab Maamoun',
                    desc: 'A Cool Doctor',
                    phoneNumber: '16002',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
