import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:application_2/components/nav_bar.dart';
import 'package:application_2/components/boxes.dart';
import 'package:application_2/components/card_title.dart';
import 'package:application_2/components/float_image.dart';
import 'package:application_2/components/top_bar.dart';

class HomeScreen extends StatefulWidget {
const HomeScreen({Key? key,}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List usuarios = [];
  @override
  void initState() {
    super.initState();
    getUsers();
  }

  void getUsers() async {
    CollectionReference myUsers = FirebaseFirestore.instance.collection('users');

  QuerySnapshot users = await myUsers.get();
  if (users.docs.isNotEmpty) {
    for (var doc in users.docs) {
      print(doc.data());
      // usuarios.add(doc.data());
    }
  }
}


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/back_1.png'), fit: BoxFit.cover)),
        child: ListView(
          children: const [
            TopBar(),
            FloatImage(),
            CardTitle(title: 'Ready to begin?',),
            Boxes(),
            CardTitle(title: 'Popular'),
            Boxes(),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/back_1.png'))
              ),
            ))
          ],
        ),
      ),
    );
  }
}