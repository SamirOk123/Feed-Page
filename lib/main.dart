import 'package:finsire_machine_test/views/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Finsire',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
