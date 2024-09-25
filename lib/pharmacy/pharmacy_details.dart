import 'dart:math';

import 'package:flutter/material.dart';

import 'package:project/constantss.dart';
import 'package:project/models/order_item.dart';

class PharmacyDetails extends StatefulWidget {
  const PharmacyDetails({super.key, required this.name});
  final String name;

  @override
  State<PharmacyDetails> createState() => _PharmacyDetailsState();
}

class _PharmacyDetailsState extends State<PharmacyDetails> {
  var price = 0;
  TextEditingController medicineController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.name),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(200, 50)),
                onPressed: () {},
                child: const Text(
                  'Upload Prescription',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 1,
                  color: Colors.black.withOpacity(0.2),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'OR',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5)),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  width: 120,
                  height: 1,
                  color: Colors.black.withOpacity(0.2),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                onSubmitted: (String value) => (setState(() {
                  price = value.length * 2;
                  print(value);
                })),
                keyboardType: TextInputType.text,
                cursorColor: Colors.black,
                controller: medicineController,
                decoration: InputDecoration(
                    focusColor: Colors.blue,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.blue)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Name of Medicine',
                    floatingLabelStyle: const TextStyle(color: Colors.blue)
                    // label: Text(
                    //   'Please enter in which week you are',
                    //   style: TextStyle(fontSize: 22, color: Colors.lightBlue),
                    // )
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                controller: quantityController,
                decoration: InputDecoration(
                    focusColor: Colors.blue,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.blue)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Quantity',
                    floatingLabelStyle: const TextStyle(color: Colors.blue)
                    // label: Text(
                    //   'Please enter in which week you are',
                    //   style: TextStyle(fontSize: 22, color: Colors.lightBlue),
                    // )
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: RichText(
                text: TextSpan(children: [
                  const TextSpan(
                      text: 'Price: ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22)),
                  TextSpan(
                      text: '$price',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7), fontSize: 22))
                ]),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(200, 50)),
                onPressed: () {
                  orderList.add(OrderItem(
                      pharmacyName: widget.name, time: Random().nextInt(50)));
                  Navigator.pop(context);
                },
                child: const Text(
                  'Order',
                  style: TextStyle(color: Colors.blue, fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
