import 'package:project/homepage/pages/department/profile_page.dart';
import 'package:flutter/material.dart';

class PersonIcon extends StatelessWidget {
  const PersonIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyProfilePage(),
            ),
          );
        },
        child: const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          backgroundImage: AssetImage('images/personn.jpg'),
        ),
      ),
    );
  }
}
