import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/Screen/Home%20page/home%20PAge.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => HomePage(),),);
    } );
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [
            Color(0xff2183E9),
            Color(0xff74DFF5),
          ],),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/sp.png'),
            Text('WEATHER APP',style: TextStyle(color: Colors.white,fontSize: 44,fontWeight: FontWeight.bold,height: -0.5),),
          ],
        ),
      ),
    );
  }
}
