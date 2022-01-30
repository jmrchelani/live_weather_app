import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:live_weather_app/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roberto',
      ),
      home: const MainScreen(),
    );
  }
}
