import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ButtonBar (
        alignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(Icons.notifications, size: 30, color: Color.fromARGB(255, 13, 43, 94)),
          const Icon(Icons.favorite, size: 30, color: Color.fromARGB(255, 13, 43, 94)),
          const Icon(Icons.bookmark, size: 30, color: Color.fromARGB(255, 13, 43, 94)),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 40,
              width: 120,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 13, 43, 94)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.explore, color: Colors.white),
                  Text('explore', style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
