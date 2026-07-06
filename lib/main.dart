import 'package:flutter/material.dart';
import 'package:trioxygen/screens/scout.dart' show Scout;
import 'package:trioxygen/count.dart' show CounterProvider;
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'TriOxygen Dev';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MatchScout(),
    );
  }
}