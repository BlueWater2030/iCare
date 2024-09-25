import 'package:flutter/material.dart';
import 'package:project/bmi_calculator/pages/input_page.dart';
import 'package:project/doctor/doctorpage.dart';
import 'package:project/hospitals/hospitals.dart';
import 'package:project/pharmacy/phar_page.dart';
import 'package:project/homepage/widgets/homepage/doctor\'s_list/catergory_card.dart';
import 'package:project/homepage/widgets/homepage/getstarted_box/getstarted_column.dart';
import 'package:project/homepage/widgets/homepage/getstarted_box/lottie_animation.dart';
import 'package:project/homepage/widgets/paddings_and_sizedboxes/padding.dart';
import 'package:project/homepage/widgets/paddings_and_sizedboxes/sizeboxeshieght_25.dart';
import 'package:project/homepage/widgets/person_iconcontainer.dart';
import 'package:project/models/item.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<Items> items = [
      Items(
          assest: 'images/doctorr.png',
          name: 'Doctors',
          page: const DoctorPage()),
      Items(
          assest: 'images/drugstore.png',
          name: 'Pharmacy',
          page: const PharPage()),
      Items(
          assest: 'images/hospital.png',
          name: 'Hospitals',
          page: const HospitalPage()),
      Items(
        assest: 'images/bmi.png',
        name: 'BMI',
        page: const MyInputPage(),
      )
    ];
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Omar Mahmoud',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                PersonIcon(),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Paddings(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  LottieAnimation(),
                  SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: GetStartedColumn(),
                  )
                ],
              ),
            ),
          ),
          const SizedBoxHieght25(),
          /* Paddings(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffF1F1FA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'How can we help you'),
                ),
              ),
            ),
            const SizedBoxHieght25(),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const DentistPage())),
                    child: const CategoryCard(
                      iconImagePath: dentistIcon,
                      text: 'Dentist',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const PharPage(),
                      ),
                    ),
                    child: const CategoryCard(
                      iconImagePath: pharmacistIcon,
                      text: 'Pharmacy',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const WomensDoctorPage())),
                    child: const CategoryCard(
                      iconImagePath: womensDoctorIcon,
                      text: 'Obstetrics and Gynecology',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const BrainDoctorPage(),
                      ),
                    ),
                    child: const CategoryCard(
                      iconImagePath: brainDoctor,
                      text: 'Neurologists',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const AbdominalPage(),
                      ),
                    ),
                    child: const CategoryCard(
                      iconImagePath: abdorminalDoctor,
                      text: 'Gastroenterology',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxesHieghtTen(),
            const Paddings(
              child: SeeAllRow(),
            ),
            const SizedBoxHieght25(),
            DoctorContainer(
              returnedText: 'Omar Mahmoud',
            ),*/
          Expanded(
            child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => items[index].page,
                      ),
                    ),
                    child: CategoryCard(
                      iconImagePath: items[index].assest,
                      text: items[index].name,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
