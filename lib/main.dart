import 'package:flutter/material.dart';
import 'package:my_demo/modules/home/presentation/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }}