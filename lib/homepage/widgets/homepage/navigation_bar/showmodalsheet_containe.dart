import 'package:project/homepage/pages/department/abdominal_page.dart';
import 'package:project/homepage/pages/department/brain_doctor.dart';
import 'package:project/homepage/pages/department/dentist_page.dart';
import 'package:project/pharmacy/phar_page.dart';
import 'package:project/homepage/pages/department/womensdoctor_page.dart';
import 'package:project/homepage/widgets/homepage/navigation_bar/reused_container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowModalSheetContainer extends StatelessWidget {
  const ShowModalSheetContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void nav(Widget page) {
      Navigator.push(context, MaterialPageRoute(builder: (builder) => page));
    }

    return SizedBox(
      height: 800,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => nav(const WomensDoctorPage()),
                  child: const ReUsedContainer(
                    margin: EdgeInsets.only(left: 20),
                    icon: FontAwesomeIcons.baby,
                    text: 'Obstetrics',
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () => nav(const DentistPage()),
                  child: const ReUsedContainer(
                    margin: EdgeInsets.only(right: 20),
                    icon: FontAwesomeIcons.tooth,
                    text: 'Dentest',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    nav(const PharPage());
                  },
                  child: const ReUsedContainer(
                    text: 'Pharmacist',
                    margin: EdgeInsets.only(left: 20),
                    icon: Icons.local_pharmacy,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    nav(const BrainDoctorPage());
                  },
                  child: const ReUsedContainer(
                    text: 'Neurologists',
                    margin: EdgeInsets.only(right: 20),
                    icon: FontAwesomeIcons.brain,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    nav(const AbdominalPage());
                  },
                  child: const ReUsedContainer(
                    text: 'Abdominal',
                    margin: EdgeInsets.only(left: 20),
                    icon: FontAwesomeIcons.bandage,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () => FirebaseAuth.instance.signOut(),
                  child: const ReUsedContainer(
                    text: 'SignOut',
                    margin: EdgeInsets.only(right: 20),
                    icon: FontAwesomeIcons.arrowRightFromBracket,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
