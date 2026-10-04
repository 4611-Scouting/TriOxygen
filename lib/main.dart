import 'package:flutter/material.dart';
import 'package:trioxygen/screens/match_scout.dart';
import 'package:trioxygen/state.dart' show CounterProvider;
import 'package:provider/provider.dart';
import 'package:trioxygen/drift.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
              Provider<AppDatabase>(
          create: (context) => AppDatabase(),
          dispose: (context, db) => db.close(),
        ),
            ChangeNotifierProvider(
      create: (context) => CounterProvider(),),
      ],
      child: MyApp(),
    ),
  );
}



class MyApp extends StatelessWidget {

  static const appTitle = 'TriOxygen Dev';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MatchScout(),
    );
  }
}