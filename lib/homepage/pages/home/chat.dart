import 'package:flutter/material.dart';
import 'package:project/homepage/pages/home/chat_details.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffF1F1FA),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Search chat'),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: ((context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatDetails(
                              name: 'Dr Omar Mahmoud',
                            ),
                          ),
                        );
                      },
                      child: chatItem());
                }),
                separatorBuilder: ((context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
                    child: Divider(
                      color: Colors.black.withOpacity(0.1),
                    ),
                  );
                }),
                itemCount: 5),
          )
        ],
      ),
    );
  }

  Padding chatItem() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('images/personn.jpg'),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dr Omar Mahmoud',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Hello,How can I help you ?',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 8.0, bottom: 25),
            child: Text('09:20'),
          )
        ],
      ),
    );
  }
}
