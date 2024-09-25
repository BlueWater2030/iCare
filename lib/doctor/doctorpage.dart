import 'package:flutter/material.dart';
import 'package:project/doctor/doctor_details.dart';
import 'package:project/homepage/constants/constants.dart';
import 'package:project/homepage/pages/department/abdominal_page.dart';
import 'package:project/homepage/pages/department/brain_doctor.dart';
import 'package:project/homepage/pages/department/dentist_page.dart';
import 'package:project/homepage/pages/department/womensdoctor_page.dart';
import 'package:project/homepage/widgets/homepage/doctor\'s_list/catergory_card.dart';
import 'package:project/homepage/widgets/paddings_and_sizedboxes/sizeboxeshieght_25.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios))),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                  ),
                ],
              ),
              const SizedBoxHieght25(),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const DoctorDetailsPage(
                                  title: 'Dentist',
                                  page: DentistPage(),
                                ))),
                    child: const CategoryCard(
                      iconImagePath: dentistIcon,
                      text: 'Dentist',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => const DoctorDetailsPage(
                                  page: WomensDoctorPage(),
                                  title: 'Obstetrics and Gynecology',
                                ))),
                    child: const CategoryCard(
                      iconImagePath: womensDoctorIcon,
                      text: 'Obstetrics and Gynecology',
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const DoctorDetailsPage(
                          title: 'Neurologists',
                          page: BrainDoctorPage(),
                        ),
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
                        builder: (builder) => const DoctorDetailsPage(
                          page: AbdominalPage(),
                          title: 'Gastroenterology',
                        ),
                      ),
                    ),
                    child: const CategoryCard(
                      iconImagePath: abdorminalDoctor,
                      text: 'Gastroenterology',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
