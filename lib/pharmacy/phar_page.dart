import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:project/pharmacy/home_pharmacy.dart';
import 'package:project/pharmacy/order_pharmacy.dart';

class PharPage extends StatefulWidget {
  const PharPage({super.key});

  @override
  State<PharPage> createState() => _PharPageState();
}

class _PharPageState extends State<PharPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List screen = [
      const HomePhar(),
      const OrderPage(),
    ];

    return Scaffold(
        bottomNavigationBar: CircleNavBar(
          activeIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            print(currentIndex);
          },
          activeIcons: const [
            Icon(Icons.local_pharmacy, color: Colors.blue),
            Icon(
              Icons.shopping_cart,
              color: Colors.blue,
            ),
          ],
          inactiveIcons: [
            Icon(Icons.local_pharmacy_outlined, color: Colors.grey[700]),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey[700],
            ),
          ],
          height: 60,
          circleWidth: 45,
          color: Colors.grey.withOpacity(.15),
          elevation: 100,
        ),
        body: screen[currentIndex]);
  }
}
