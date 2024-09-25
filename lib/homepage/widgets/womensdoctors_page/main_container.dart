import 'package:project/homepage/widgets/womensdoctors_page/constants/constants.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatefulWidget {
  final String week;
  const MainContainer({Key? key, required this.week}) : super(key: key);

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            color: const Color(0xffFB6187),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.week.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                  ),
                ),
                const Text(
                  'WEEKS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 1,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Flexible(
              flex: 200,
              child: Text(
                '''
            If you wanna info 
            about what happends
            to your body 
            or your baby 
            please check down 
            the boxes below''',
                style: normalTextStyle,
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        )
      ],
    );
  }
}
