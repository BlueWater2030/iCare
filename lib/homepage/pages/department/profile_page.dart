
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
              Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back_ios)),
                  ),
                ),]),
             SizedBox(height: MediaQuery.of(context).size.height/4,),
            const CircleAvatar(radius: 80,
            backgroundImage:AssetImage('images/doctor.jpg') ),
            const SizedBox(height: 5,),
            const Text('Omar Mahmoud',style:TextStyle(fontSize:22,fontWeight: FontWeight.bold),),
          const Spacer(),
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
              child: Card(color:  Colors.blue.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15),
                  child: Column(
                    children: [
                      const CardItem(icon: Icons.mail,text: 'Email',value: 'Omarr@gmail.com',),
                      const SizedBox(height: 15,),
                      const CardItem(icon: Icons.phone,text: 'Phone',value: '01027671149',),
                      Spacer(),
                      GestureDetector(
                        onTap: (){
                          FirebaseAuth.instance.signOut();
                        },
                        child: Container(width: MediaQuery.of(context).size.width-5,height: 80,decoration: BoxDecoration(
                          color: Colors.blue,borderRadius: BorderRadius.circular(12)
                        ),child:const Center(
                          child: Text('Log Out',
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                        ,)
                        ,),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),),
    );
  }
}

class CardItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String value;
  const CardItem({
    
    super.key, required this.icon, required this.text, required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,size: 35,),
        const SizedBox(width: 5,)
        ,Text(text,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        const SizedBox(width: 10,),
        SizedBox(width: MediaQuery.of(context).size.width/1.7,
        child:  Text(value,
        maxLines: 1,
        overflow:TextOverflow.ellipsis ,
        style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
        ),),
      ]
    );
  }
}


