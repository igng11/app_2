import 'package:flutter/material.dart';
import 'package:application_2/screens/home_screen.dart';

class Sleep extends StatelessWidget {
const Sleep ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Center(
          child: Text('Sleep', style: TextStyle(fontSize: 80),),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton:  Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));},
                  child: const Icon(Icons.arrow_back_ios_rounded, color: Colors.blueAccent, size: 45),
                  ),
        ),
       ),
    );
  }
}
