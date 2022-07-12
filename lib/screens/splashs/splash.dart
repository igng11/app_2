import 'package:flutter/material.dart';
import 'package:application_2/screens/splashs/splash2.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color.fromRGBO(255, 234, 212, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/images/Splash1.png', width: 400),
            Column(
              children: <Widget>[
                const Text('Bienvenidos', style: TextStyle(fontSize: 30),),
                Text( "Moshx's App", style: Theme.of(context).textTheme.headline2,),
                ],
            ),
            MaterialButton(
              elevation: 10.0,
              minWidth: 190.0,
              height: 70.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(34.0)
              ),
              child: const Text(
             "Get started",
             style: TextStyle(color: Color.fromARGB(255, 230, 224, 245),
             fontSize: 20,
             fontWeight: FontWeight.bold),
            
             ), 
               onPressed: ()=>{
               Navigator.push(
               context, 
               MaterialPageRoute(builder: (context)=> const Splash2())),
               }
            ),
          ],
        ),
      ),
    );
  }
}