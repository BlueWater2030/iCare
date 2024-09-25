import 'package:project/homepage/widgets/womensdoctors_page/buttomwomens_container.dart';
import 'package:project/homepage/widgets/womensdoctors_page/constants/constants.dart';
import 'package:project/homepage/widgets/womensdoctors_page/main_container.dart';
import 'package:project/homepage/widgets/womensdoctors_page/peroid_container.dart';
import 'package:project/homepage/widgets/womensdoctors_page/wbabybody_container.dart';
import 'package:flutter/material.dart';

class WomensDoctorPage extends StatefulWidget {
  const WomensDoctorPage({Key? key}) : super(key: key);

  @override
  State<WomensDoctorPage> createState() => _WomensDoctorPageState();
}

class _WomensDoctorPageState extends State<WomensDoctorPage> {
  @override
  Widget build(BuildContext context) {
    String week = weekController.text.isEmpty ? '0' : weekController.text;

    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Hello There',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.withOpacity(0.8)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          '29 march',
                          //DateFormat('yyyy-MM-dd').toString(),
                          style:
                              TextStyle(color: Color(0xff767590), fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Your Pregnancy',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: SizedBox(
                          height: 500,
                          width: MediaQuery.of(context).size.width / 1 - 20,
                          child: ListView(
                            children: [
                              int.parse(week) == 0
                                  ? const PeroidContainer()
                                  : MainContainer(week: week),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'What\'s happening to',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  WBabyBodyChangeContainer(
                                    week: week,
                                    image: 'icons/women.png',
                                    label: 'Your Body',
                                    margin: const EdgeInsets.only(left: 10),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  WBabyBodyChangeContainer(
                                    week: week,
                                    image: 'icons/baby-and-heart.png',
                                    label: 'Your Baby',
                                    margin: const EdgeInsets.only(right: 10),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              ButtomWomensContainer(
                                weeksLeft: week,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
