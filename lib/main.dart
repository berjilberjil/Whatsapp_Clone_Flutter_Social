import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsin/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

void main() {
  runApp(const MyApp());
}
