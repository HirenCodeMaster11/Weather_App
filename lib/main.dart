import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Provider/weather%20provider.dart';
import 'package:weather_app/Screen/FavScreen/favscreen.dart';
import 'package:weather_app/Screen/Home%20page/home%20PAge.dart';
import 'package:weather_app/Screen/Splash%20Screen/splash.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // '/' : (context) =>  SplashScreen(),
          '/' : (context) =>  HomePage(),
          // '/' : (context) =>  FavScreen(),
        },
      ),
    );
  }
}
