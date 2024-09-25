import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:project/homepage/pages/home/chat.dart';
import 'package:project/homepage/pages/home/home.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var a = [''];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List screen = [
      const HomeContent(),
      const ChatPage(),
    ];
    return Scaffold(
        /* bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 30),
        margin: const EdgeInsets.only(top: 13),
        child: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: const Color(0xfffcfeff),
          color: Colors.deepPurple[200]!,
          index: 1,
          items: [
            NavIcon(
              func: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyInputPage(),
                ),
              ),
              icon: FontAwesomeIcons.calculator,
            ),
            NavIcon(
              func: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const ShowModalSheetContainer();
                    });
              },
              icon: Icons.arrow_circle_up_rounded,
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainiMassagePage()));
              }),
              child: const Icon(
                Icons.message,
                size: 30,
              ),
            ),
          ],
        ),
      ),*/
        bottomNavigationBar: CircleNavBar(
          activeIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
            print(currentIndex);
          },
          activeIcons: const [
            Icon(Icons.home, color: Colors.blue),
            Icon(
              Icons.chat,
              color: Colors.blue,
            ),
          ],
          inactiveIcons: [
            Icon(Icons.home_outlined, color: Colors.grey[700]),
            Icon(
              Icons.chat_outlined,
              color: Colors.grey[700],
            ),
          ],
          height: 60,
          circleWidth: 45,
          color: Colors.grey.withOpacity(.15),
          elevation: 5,
        ),
        backgroundColor: const Color(0xfffcfeff),
        body: screen[currentIndex]);
  }
}
