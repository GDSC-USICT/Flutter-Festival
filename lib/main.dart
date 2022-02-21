import 'package:flutter/material.dart';
import 'package:flutterfestival/constants.dart';
import 'package:flutterfestival/screens/home_screen.dart';
import 'package:flutterfestival/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Festival",
      debugShowCheckedModeBanner: false,
      initialRoute: homeScreen,
      routes: {
        homeScreen: (_) => HomeScreen(),
        profileScreen: (_) => ProfileScreen(),
      },
    );
  }
}
