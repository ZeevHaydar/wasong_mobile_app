import 'package:wasong_mobile_app/navigations/main_navigations.dart';
import 'package:wasong_mobile_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:wasong_mobile_app/screens/landing_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WaSong',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const LandingScreen1(),
    );
  }
}
