import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart';
import 'package:trioxygen/state.dart' show CounterProvider;
import 'package:provider/provider.dart';
import 'package:trioxygen/drift.dart';

void main() {
  final database = AppDatabase();
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MyApp(database: database),
    ),
  );
}


class MyApp extends StatelessWidget {
  final AppDatabase database;
  const MyApp({super.key, required this.database});

  static const appTitle = 'TriOxygen Dev';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MatchScout(database: database),
    );
  }
}