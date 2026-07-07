import 'package:flutter/material.dart';

enum RobotPosition { Red1, Red2, Red3, Blue1, Blue2, Blue3}
enum MatchLevel {Practice, Quals, Playoffs}
class CounterProvider extends ChangeNotifier {
  String _userName = '';
  String _matchNumber = '';
  String _teamNumber = '';
  bool _flip = false;
  RobotPosition _robotPosition = .Red1;
  MatchLevel _matchLevel = MatchLevel.Practice;
  double? _dx; 
  double? _dy; 

  String get userName => _userName;
  String get matchNumber => _matchNumber;
  String get teamNumber => _teamNumber;
  bool get flip => _flip;
  RobotPosition get robotPosition => _robotPosition;
  MatchLevel get matchLevel => _matchLevel;
  double? get dx => _dx;
  double? get dy => _dy;

  void updateSomeValue(String input) {
    _userName = input;
    notifyListeners();
    }
  void updateDeezNutz(double? dx, double? dy) {
    _dx = dx;
    _dy = dy;
    }
  void updateMatchLevel(MatchLevel input) {
    _matchLevel = input;
    }
  void updateMatchNumber(String input) {
    _matchNumber = input;
    notifyListeners();
    }
  void updateTeamNumber(String input) {
    _teamNumber = input;
    notifyListeners();
    }
  void flipfunc(){
    _flip = !_flip;
  }
  void robotPositionUpdate(RobotPosition robot){
    _robotPosition = robot;
  }
  }
