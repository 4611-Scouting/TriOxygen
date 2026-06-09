import 'package:flutter/material.dart';
import 'package:trioxygen/screens/scout.dart' show Scout;
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'TriOxygen Dev';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: Scout(),
    );
  }
}