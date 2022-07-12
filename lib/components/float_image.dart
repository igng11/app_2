import 'package:flutter/material.dart';

class FloatImage extends StatelessWidget {
const FloatImage ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Center(
          child: Image.asset('assets/images/float_image.png', height: 380,),
   ),
    );
  }
}