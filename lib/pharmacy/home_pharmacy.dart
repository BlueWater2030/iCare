import 'package:flutter/material.dart';
import 'package:project/pharmacy/map.dart';
import 'package:project/pharmacy/pharmacy_details.dart';
import 'package:project/homepage/widgets/paddings_and_sizedboxes/padding.dart';
import 'package:project/models/pharmacy.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePhar extends StatelessWidget {
  const HomePhar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Pharmacy> pharmaciesList = [
      Pharmacy(
          lat: 30.293938175757933,
          long: 31.74594165330938,
          rate: 5,
          location: 'omar',
          adreess: 'El Ordonia Tenth Of Ramadan',
          name: 'El Refaay',
          telephone: '01027674149'),
      Pharmacy(
          lat: 30.301121856752022,
          long: 31.758553601616644,
          rate: 4,
          location: 'omar',
          adreess: 'Ghandor Hospital',
          name: 'El Ghandor Pharmacies ',
          telephone: '01027674149'),
      Pharmacy(
          lat: 30.29107177634267,
          long: 31.744219902749375,
          rate: 4,
          location: 'omar',
          adreess: 'El Ordonia ',
          name: 'Dr Marwa Salem Pharmacy',
          telephone: '01027674149'),
      Pharmacy(
          lat: 30.294835723271195,
          long: 31.74559790096784,
          rate: 5,
          location: 'omar',
          adreess: 'El Ordonia ',
          name: 'Dr. Mourad Pharmacy',
          telephone: '01027674149'),
      Pharmacy(
          lat: 30.299609212049802,
          long: 31.74742680049391,
          location: 'omar',
          rate: 5,
          adreess: 'El Ordonia ',
          name: 'Olive Pharmacy',
          telephone: '01027674149'),
    ];
    return SafeArea(
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
                      'Pharmacies nearby',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
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
                  itemCount: pharmaciesList.length,
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
                                  child: Image.asset('images/drugstore.png')),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 12),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines:1,
                                      pharmaciesList[index].name,
                                      style: const TextStyle(
                                        
                                        
                                          letterSpacing: -1,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    pharmaciesList[index].adreess,
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
                                      pharmaciesList[index].rate, //modify
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
                            GestureDetector(
                              onTap: () => Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Maps(
                                  latMarker: pharmaciesList[index].lat,
                                  longMarker: pharmaciesList[index].long,
                                );
                              })),
                              child: const Icon(
                                Icons.location_on,
                                color: Colors.blueGrey,
                                size: 35,
                              ),
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
                                      name: pharmaciesList[index].name,
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                width: 60,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(12)),
                                child: const Icon(Icons.shopping_cart,
                                    color: Colors.white),
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
    ));
  }
}
