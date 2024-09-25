import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/homepage/widgets/paddings_and_sizedboxes/padding.dart';
import 'package:project/hospitals/hospital_details.dart';
import 'package:project/models/hospital.dart';
import 'package:project/pharmacy/pharmacy_details.dart';

class HospitalPage extends StatelessWidget {
  const HospitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Hospital> hospitalsList = [
      Hospital(
          image: 'images/ghandor.jpg',
          location: 'omar',
          adreess: 'El Ordonia Tenth Of Ramadan',
          name: 'El Ghandor',
          rate: 5,
          telephone: '01027674149'),
      Hospital(
          image: 'images/ghandor.jpg',
          location: 'omar',
          adreess: 'El Ordonia Tenth Of Ramadan',
          name: 'El Helal',
          rate: 4,
          telephone: '01027674149'),
      Hospital(
          image: 'images/ghandor.jpg',
          rate: 4,
          location: 'omar',
          adreess: 'El Ordonia Tenth Of Ramadan',
          name: 'Dr Omar Hospital',
          telephone: '01027674149'),
      Hospital(
          image: 'images/ghandor.jpg',
          rate: 3,
          location: 'omar',
          adreess: 'El Ordonia Tenth Of Ramadan',
          name: 'Medica Hospital',
          telephone: '01027674149'),
      Hospital(
          image: 'images/ghandor.jpg',
          rate: 5,
          location: 'omar',
          adreess: 'El Ordonia Tenth Of Ramadan',
          name: 'El Ezaby',
          telephone: '01027674149'),
    ];
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back_ios)),
                    ),
                  ),
                  Expanded(
                    child: Paddings(
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Hospitals nearby',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, top: 10),
                    child: Text(
                      'See all',
                      style: TextStyle(color: Colors.grey[700], fontSize: 18),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 550,
                child: ListView.builder(
                    itemCount: hospitalsList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                              color: const Color(0xffEBECF4).withOpacity(0.8),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset('images/hospital.png')),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 12),
                                    child: Text(
                                      hospitalsList[index].name,
                                      style: const TextStyle(
                                          letterSpacing: -1,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      hospitalsList[index].adreess,
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          letterSpacing: -1,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  RatingBar.builder(
                                    itemSize: 25,
                                    initialRating:
                                        hospitalsList[index].rate, //modify
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
                              const SizedBox(
                                width: 26.7,
                              ),
                              const Icon(
                                Icons.location_on,
                                color: Colors.blueGrey,
                                size: 35,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (builder) => PharmacyDetails(
                                        name: hospitalsList[index].name,
                                      ),
                                    ),
                                  );
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HospitalDetails(
                                            image: hospitalsList[index].image,
                                            name: hospitalsList[index].name),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Icon(Icons.arrow_forward,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
