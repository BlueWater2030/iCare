// //import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class DoctorContainer extends StatelessWidget {
//   final String returnedText;
//   List<String?> doctorsIDs = [];

//   DoctorContainer({Key? key, required this.returnedText}) : super(key: key);

//   // Future getDoctorsIDs() async {
//   //   await FirebaseFirestore.instance
//   //       .collection('users')
//   //       .get()
//   //       // ignore: avoid_function_literals_in_foreach_calls
//   //       .then((snapshot) => snapshot.docs.forEach((name) {
//   //             doctorsIDs.add(name.reference.id.toString());
//   //           }));
//   // }

//   CollectionReference users = FirebaseFirestore.instance.collection('users');

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 300,
//       child: FutureBuilder(
//           future: getDoctorsIDs(),
//           builder: (context, snapshot) {
//             return ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: const Color(0xffF5F6FF),
//                     ),
//                     margin: const EdgeInsets.only(left: 15),
//                     height: 100,
//                     width: 180,
//                     child: Align(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             CircleAvatar(
//                               radius: 35,
//                               child: SizedBox(
//                                   width: 70,
//                                   height: 70,
//                                   child: ClipOval(
//                                     child: Image.asset(
//                                       'images/doctor.jpg',
//                                       fit: BoxFit.cover,
//                                     ),
//                                   )),
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             ListTile(
//                               title: FutureBuilder<DocumentSnapshot>(
//                                   future: users.doc().get(),
//                                   builder: ((context, snapshot) {
//                                     if (snapshot.connectionState ==
//                                         ConnectionState.active) {
//                                       Map<String, dynamic> data = snapshot.data!
//                                           .data() as Map<String, dynamic>;
//                                       return Text(
//                                         '${data['first name']}',
//                                       );
//                                     }
//                                     return Align(
//                                       alignment: Alignment.bottomLeft,
//                                       child: Container(
//                                         margin: const EdgeInsets.only(
//                                           bottom: 40,
//                                         ),
//                                         child: Column(
//                                           children: [
//                                             Text(
//                                               returnedText,
//                                               style: const TextStyle(
//                                                   fontSize: 20,
//                                                   color: Colors.teal),
//                                             ),
//                                             const SizedBox(
//                                               height: 5,
//                                             ),
//                                             const Text(
//                                               'A very good Surgoen',
//                                               style: TextStyle(fontSize: 18),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     );
//                                   })),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//                 itemCount: 1);
//           }),
//     );
//   }
// }
