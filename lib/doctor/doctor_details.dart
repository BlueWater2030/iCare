import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/models/doctor.dart';

class DoctorDetailsPage extends StatelessWidget {
  const DoctorDetailsPage({super.key, required this.title, required this.page});
  final String title;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    List<DoctorModel> doctorsList = [
      DoctorModel(name: 'Omar Mahmoud', number: '01027674149', rate: 5),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => page));
              },
              icon: const Icon(
                Icons.info_outline,
                size: 30,
              ),
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: doctorsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: const Color(0xffEBECF4).withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0, left: 8),
                      child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.asset(
                            'images/doctorr.png',
                          )),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 12),
                          child: Text(
                            doctorsList[index].name,
                            style: const TextStyle(
                                letterSpacing: -1,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 1),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            doctorsList[index].number,
                            style: TextStyle(
                                color: Colors.grey[700],
                                letterSpacing: -1,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 1),
                        RatingBar.builder(
                          itemSize: 25,
                          initialRating: doctorsList[index].rate, //modify
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.amber,
                            );
                          },
                          onRatingUpdate: (onRating) {},
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.chat_outlined,
                      color: Colors.blueGrey,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
