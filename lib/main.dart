import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:whatsin/screens/splash.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
  }
}

void main() {
  runApp(const MyApp());
}
