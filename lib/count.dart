import 'package:flutter/material.dart';
import 'package:trioxygen/screens/scout.dart' show Scout;
import 'package:provider/provider.dart';
class CounterProvider extends ChangeNotifier {
  String _count = '';

  // Getter to expose the count safely
  String get count => _count;

  void updateSomeValue(String input) {
    _count = input;
    print(_count);
    notifyListeners();
    }
}