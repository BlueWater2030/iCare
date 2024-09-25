import 'package:flutter/material.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class AbdominalDoctorContainer extends StatelessWidget {
  final String imagepath;
  final String name;
  final String desc;
  final String phoneNumber;
  const AbdominalDoctorContainer(
      {Key? key,
      required this.imagepath,
      required this.name,
      required this.desc,
      required this.phoneNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 5, top: 4),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 35,
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipOval(
                    child: Image.asset(
                      imagepath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dr $name',
                    style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text(
                  desc,
                  style: TextStyle(color: Colors.deepPurple[900], fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  child: GestureDetector(
                    onTap: () async {
                     // await FlutterPhoneDirectCaller.callNumber(phoneNumber);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 80),
                      padding: const EdgeInsets.all(8),
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.phone),
                          Text(phoneNumber,
                              style: TextStyle(
                                  color: Colors.deepPurple[900], fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
