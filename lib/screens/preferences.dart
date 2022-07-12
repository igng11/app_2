import 'package:application_2/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Preferences extends StatelessWidget {
const Preferences ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('preferences'.toUpperCase())),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: const Icon(Icons.arrow_back_ios_rounded, color: Colors.blueAccent, size: 40,),
        backgroundColor: Colors.transparent,
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));},
      ),
   );
  }
}