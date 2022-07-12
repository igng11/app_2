import 'package:flutter/material.dart';

import '../screens/sleep.dart';

class BoxItem extends StatelessWidget {

  final Color color;
  
  const BoxItem({
    Key? key, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(26),
      child: GestureDetector (
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Sleep()));
        },
        child: Container(
          width: 370,
          decoration: BoxDecoration(
          color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Sleep', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500)),
                    const Text('Sint non do enim laborum \nexercitation nisi nostrud \nnisi laborum reprehenderit.', textAlign: TextAlign.left, style: TextStyle(fontSize: 10, color: Colors.white),),
                    const Spacer(),
                    Row(
                      children: [
                      const Icon(Icons.ac_unit, size: 20, color: Colors.white),
                      const SizedBox(width: 20),
                      Text('yoga'.toUpperCase(), style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),)]),
                  ],
                ),
                Image.asset('assets/images/float_image.png', height: 130)
              ],
            ),
          ),
        ),
      ),
    );
  }
}