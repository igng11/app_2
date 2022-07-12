import 'package:application_2/screens/preferences.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
const TopBar ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 30),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector (
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Preferences()));
              },
              child: const Icon(Icons.auto_awesome_sharp, size: 40, color: Colors.blueGrey,)),
            Text('medi'.toUpperCase(), style: const TextStyle(color: Colors.blueGrey, fontSize: 35, fontWeight: FontWeight.w700, letterSpacing: 7)),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/profile-pic.png', height: 60,)),
        ],
   ),
    );
  }
}