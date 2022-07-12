import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final String title;
const CardTitle ({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 65.0, top: 40, right: 58, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(title, style: const TextStyle(letterSpacing: 3, fontSize: 25, fontWeight: FontWeight.w600)),
          const Text('See all', style: TextStyle(color: Colors.purple, fontSize: 15, fontWeight: FontWeight.w600),),
        ],
      ),
    );
  }
}