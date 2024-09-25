// import 'package:project/authinification_page/widgets/sizebox10.dart';
// import 'package:project/authinification_page/widgets/textfielslist.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project/authinification_page/constants/registerpage_constants.dart';
// import 'package:project/homepage/pages/home/homepage.dart';

// class RegisterPage extends StatefulWidget {
//   final VoidCallback showLoginPage;
//   const RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// DropdownMenuItem<String> dropdownMenuItem(String value, String label) {
//   return DropdownMenuItem<String>(
//     value: value,
//     child: Text(
//       label,
//       style: const TextStyle(
//         fontSize: 18,
//       ),
//     ),
//   );
// }

// class _RegisterPageState extends State<RegisterPage> {
//   String? initval = 'Choose One';

//   // Future signUp() async {
//   //   if (true) {
//   //    await  FirebaseAuth.instance.createUserWithEmailAndPassword(
//   //       email: 'kREmailControllertext@gmail.com',
//   //       password: '99999999',
        
//   //     ).then((value){
//   //       //  FirebaseAuth.instance.signInWithEmailAndPassword(
//   //       // email: kREmailController.text,
//   //       //   password: kRPasswordController.text);
       
//   //       //   addUserDetails(
//   //       //   firstName: kRNameController.text,
//   //       //   lastName: kRLastNameController.text,
//   //       //   email: kREmailController.text,
//   //       //   age: int.parse(
//   //       //     kRAgeController.text,
//   //       //   ),
//   //       //   user: initval,
//   //       //   description: kRDescription.text,
//   //       //   phoneNumber: int.parse(kRPhoneNumber.text),
//   //       //   password: kRPasswordController.text);
//   //       //    Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=> MyHomePage()));
//   //       // print(value);
        
//   //     }).catchError((error){
//   //       print('the error is ${error.toString()}');
//   //     });
 

//   //    print(kRPasswordController.text);
//   //    print(kREmailController.text);

    
//   //   }
   
//   // }

//   Future addUserDetails(
//       {required String firstName,
//       required String lastName,
//       required String email,
//       required int age,
//       required int phoneNumber,
//       required String description,
//       required String? user,
//       required password}) async {
//     // await FirebaseFirestore.instance.collection('users').add({
//     //   'first name': firstName,
//     //   'last name': lastName,
//     //   'email': email,
//     //   'age': age,
//     //   'user_doctor': user,
//     //   'phone Number': phoneNumber,
//     //   'description': description,
//     //   'password': password
//     // });
//   }

//   // bool passwordIsConfirmed() {
//   //   if (kRPasswordController.text.trim() ==
//   //               kRConfirmPasswordController.text.trim() &&
//   //           kRPasswordController.text.isNotEmpty &&
//   //           kRConfirmPasswordController.text.isNotEmpty &&
//   //           kRPhoneNumber.text.isNotEmpty &&
//   //           kRDescription.text.isNotEmpty &&
//   //           initval == 'User' ||
//   //           initval=='Doctor'
//   //      ) {
//   //     return true;
//   //   } else {
//   //     return false;
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Hello There!',
//                   style: GoogleFonts.bebasNeue(
//                     fontSize: 52,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'Register below with your details',
//                   style: TextStyle(
//                     fontSize: 22,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 textfields[0],
//                 const SizedBox10(),
//                 textfields[1],
//                 const SizedBox10(),
//                 textfields[2],
//                 const SizedBox10(),
//                 textfields[3],
//                 const SizedBox10(),
//                 textfields[4],
//                 const SizedBox10(),
//                 textfields[5],
//                 const SizedBox10(),
//                 textfields[6],
//                 const SizedBox10(),
//                 textfields[7],
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Align(
//                       alignment: Alignment.bottomRight,
//                       child: Container(
//                         margin: const EdgeInsets.only(right: 30),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height / 18,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(12),
//                             border: Border.all(color: Colors.grey, width: 1),
//                             color: Colors.grey[200],
//                           ),
//                           child: DropdownButton<String>(
//                               alignment: Alignment.bottomRight,
//                               itemHeight:
//                                   MediaQuery.of(context).size.height / 15,
//                               hint: Center(
//                                 child: Text(
//                                   initval.toString(),
//                                 ),
//                               ),
//                               elevation: 0,
//                               items: [
//                                 dropdownMenuItem('User', 'User'),
//                                dropdownMenuItem('Doctor', 'Doctor')
//                               ],
//                               onChanged: (val) {
//                                 setState(() {
//                                   initval = val;
//                                 });
//                               }),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: GestureDetector(
//                     onTap: () async{
//                 var user =  await FirebaseAuth.instance.createUserWithEmailAndPassword(
//   email:kREmailController.text,
//   password: kRPasswordController.text,
// ).then((value) {
  
// print('   the value is ${value.toString()}');
// }).catchError((error) {

// });
// print('the usr is ${user}');
// await FirebaseAuth.instance.signInWithEmailAndPassword(email: kREmailController.text, password: kRPasswordController.text)
// .then((val){}).catchError((error){

//   print('The error is ${error.toString()}');
// });

//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.blue,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       padding: const EdgeInsets.all(20),
//                       child: const Center(
//                         child: Text(
//                           'Sign Up',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'Already have a account!',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: widget.showLoginPage,
//                       child: const Text(
//                         '  Login now',
//                         style: TextStyle(
//                           color: Colors.blue,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
