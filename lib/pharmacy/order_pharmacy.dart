import 'package:flutter/material.dart';
import 'package:project/constantss.dart';
import 'package:lottie/lottie.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: orderList.isEmpty
          ? const Center(
              child: Text(
                'No Order yet',
                style: TextStyle(fontSize: 20),
              ),
            )
          : ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (context, index) => orderItem(
                  orderList[index].pharmacyName, orderList[index].time),
            ),
    );
  }

  Padding orderItem(String name, int time) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 12.0, right: 12, top: 15, bottom: 12),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: const Color(0xffEBECF4).withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 100,
                child: Lottie.asset('lottie/delivery.json', fit: BoxFit.cover)),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '${time.toString()} min',
                  style: TextStyle(color: Colors.grey[700], fontSize: 15),
                )
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_on,
                  size: 40, color: Colors.blueGrey),
            )
          ],
        ),
      ),
    );
  }
}
