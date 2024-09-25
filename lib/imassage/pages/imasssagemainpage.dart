import 'package:project/imassage/pages/calls_page.dart';
import 'package:project/imassage/pages/contacts_page.dart';
import 'package:project/imassage/pages/notifiacations_page.dart';

import 'package:flutter/material.dart';

class MainiMassagePage extends StatelessWidget {
  MainiMassagePage({super.key});

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('Masseges');

  final pages = const [
    NotificationPage(),
    CallsPage(),
    ContactPage(),
  ];

  final pageTitles = const [
    ' Messages',
    'Notifications',
    '      Calls',
    ' Contacts',
  ];

  void _onNavigationItemSelected(index) {
    title.value = pageTitles[index];
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF9FAFE),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ValueListenableBuilder(
            builder: ((BuildContext context, String value, _) {
              return Row(
                children: [
                  const SizedBox(
                    width: 70,
                  ),
                  Text(
                    value,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.purple[400]),
                  ),
                ],
              );
            }),
            valueListenable: title,
          ),
        ),
        body: ValueListenableBuilder(
          valueListenable: pageIndex,
          builder: (BuildContext context, int value, _) {
            return pages[value];
          },
        ),
        bottomNavigationBar: _IMassageBottomNavigationBar(
          onItemSelected: _onNavigationItemSelected,
        ),
      ),
    );
  }
}

class _IMassageBottomNavigationBar extends StatefulWidget {
  const _IMassageBottomNavigationBar({Key? key, required this.onItemSelected})
      : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<_IMassageBottomNavigationBar> createState() =>
      _IMassageBottomNavigationBarState();
}

class _IMassageBottomNavigationBarState
    extends State<_IMassageBottomNavigationBar> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });

    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _IMassageNavigationBarItem(
              lable: 'Massages',
              icon: Icons.message,
              index: 0,
              isSelected: (selectedIndex == 0),
              onTap: handleItemSelected,
            ),
            _IMassageNavigationBarItem(
                lable: 'Notification',
                icon: Icons.notifications,
                index: 1,
                isSelected: (selectedIndex == 1),
                onTap: handleItemSelected),
            _IMassageNavigationBarItem(
                lable: 'Calls',
                icon: Icons.phone,
                index: 2,
                isSelected: (selectedIndex == 2),
                onTap: handleItemSelected),
            _IMassageNavigationBarItem(
                lable: 'Contacts',
                icon: Icons.people,
                isSelected: (selectedIndex == 3),
                index: 3,
                onTap: handleItemSelected),
          ],
        ));
  }
}

class _IMassageNavigationBarItem extends StatelessWidget {
  const _IMassageNavigationBarItem({
    required this.index,
    required this.lable,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  });

  final ValueChanged<int> onTap;
  final String lable;
  final int index;
  final bool isSelected;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon,
                size: 20,
                color: isSelected
                    ? const Color.fromARGB(255, 108, 53, 204)
                    : Colors.grey[900]),
            const SizedBox(
              height: 8,
            ),
            Text(
              lable,
              style: const TextStyle(fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
}
