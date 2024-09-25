import 'package:flutter/material.dart';

class StoriesContainer extends StatelessWidget {
  const StoriesContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Stories',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: SizedBox(
            height: 80,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(
                  width: 5,
                ),
                CircleAvaterr(
                  image: 'images/profilepicfive.jpg',
                  name: 'Omar',
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvaterr(
                  image: 'images/profilepicsix.jpg',
                  name: 'Ahmed',
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvaterr(
                  image: 'images/profilepicone.jpg',
                  name: 'Tristana',
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvaterr(
                  image: 'images/profilepicthree.jpg',
                  name: 'Emillia',
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvaterr(
                  image: 'images/profilepictwo.jpg',
                  name: 'Mera',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CircleAvaterr extends StatelessWidget {
  const CircleAvaterr({Key? key, required this.image, required this.name})
      : super(
          key: key,
        );

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 26,
          child: ClipOval(child: Image.asset(image)),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
