import 'package:flutter/material.dart';
import 'dart:async';

enum RobotPosition { Red1, Red2, Red3, Blue1, Blue2, Blue3}
enum MatchLevel {Practice, Quals, Playoffs}
enum SingingCharacter {NoAttempt, Attempted, Successful}
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
// BELOW IS THE AUTON STUFF I AM TOO LAZY TO MAKE A MULTI PROVIDER SOLUTION
  Duration _elapsedTimeAuton = Duration.zero;
  SingingCharacter? _autonClimb = .NoAttempt;
  List<bool?> _isCheckedAuton = [false, false, false, false];
  List<Widget?> _autonChildren = [];
  List<double?> _dxAuton = [];
  List<double?> _dyAuton = [];
  bool _autonFlip = false;

  Duration get elapsedTimeAuton => _elapsedTimeAuton;
  SingingCharacter? get autonClimb => _autonClimb;
  List<bool?> get isCheckedAuton => _isCheckedAuton; 
  List<Widget?> get autonChildren => _autonChildren;
  List<double?> get dxAuton => _dxAuton;
  List<double?> get dyAuton => _dyAuton;
  bool get autonFlip => _autonFlip;

  void updateAutonTimer(Duration input){
    _elapsedTimeAuton = input;
  }
  void updateAutonClimbSelect(SingingCharacter? input){
    _autonClimb = input;
  }
  void updateAutonChecked(bool? input, int index){
    _isCheckedAuton[index] = input;
  }
  void updateAutonChildren(List<Widget?> input, List<double?> inputx, List<double?> inputy){
    _autonChildren = input;
    _dxAuton = inputx;
    _dyAuton = inputy;
  }
  void updateAutonFlip(bool input){
    _autonFlip = input;
  }
}
