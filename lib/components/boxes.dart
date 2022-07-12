import 'package:application_2/components/box_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
const Boxes ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: CarouselSlider(
        options: CarouselOptions( 
          height: 180,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
        // aspectRatio: 16/9,
        ),
        items: const [
          BoxItem(color: Color.fromARGB(255, 160, 101, 24)),
          BoxItem(color: Color.fromARGB(255, 24, 144, 160)),
          BoxItem(color: Color.fromARGB(255, 159, 39, 161)),
        ],
   ),
    );
  }
}

