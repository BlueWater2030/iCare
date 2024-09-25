import 'package:flutter/material.dart';

class MedicineContainer extends StatelessWidget {
  final String name;
  final String desc;
  final String price;
  final String image;
  const MedicineContainer(
      {Key? key,
      required this.name,
      required this.desc,
      required this.price,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        height: 120,
        width: 400,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Container(
                padding: const EdgeInsets.only(left: 12),
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurple[300],
                  radius: 45,
                  child: ClipOval(
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Color(0xff0020AC),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 100),
                  child: Text(
                    price,
                    style: const TextStyle(
                      color: Color(0xffE74054),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 5,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const SizedBox(
                        height: 500,
                        child: Center(
                          child: Text(
                            '''Sorry This service is here yet ☹
Coming Soon''',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                      );
                    }),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepPurple[400]),
                  child: const Center(
                      child: Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 24),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
