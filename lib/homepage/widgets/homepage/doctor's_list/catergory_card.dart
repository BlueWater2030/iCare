import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String iconImagePath;
  final String text;

  const CategoryCard({
    Key? key,
    required this.iconImagePath,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffEBECF4),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: Image.asset(iconImagePath),
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 20),
              )
            ],
          )),
    );
  }
}





/* Row( Container old child
          children: [
            Image.asset(
              iconImagePath.toString(),
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              flex: 100,
              child: Text(
                overflow: TextOverflow.fade,
                maxLines: 1,
                text.toString(),
              ),
            ),
          ],
        ),*/