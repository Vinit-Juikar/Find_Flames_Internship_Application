import 'package:find_flames_internship_application/screens/main_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: MainHomeScreen(),
      )),
    );
  }
}
