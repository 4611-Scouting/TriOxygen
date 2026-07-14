import 'package:flutter/material.dart';
import 'dart:async';

enum RobotPosition { Red1, Red2, Red3, Blue1, Blue2, Blue3}
enum MatchLevel {Practice, Quals, Playoffs}
enum SingingCharacter {NoAttempt, Attempted, Successful}
enum ClimbLevel { Level1, Level2, Level3, Attempted, NotAttempted }
enum DriverSkill { nE, a, vE, nO,}
enum DefenseSkill { bA, a, g, e,dnpd}
enum SpeedSkill {one,two,three,four,five}
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
// BELOW IS TELEOP STUFF ANI DONT BE MAD

  List<bool?> _isCheckedTeleop = [false, false, false, false, false, false, false];
  List<Widget?> _teleopChildren = [];
  List<double?> _dxTeleop = [];
  List<double?> _dyTeleop = [];
  bool _teleopFlip = false;

  List<bool?> get isCheckedTeleop => _isCheckedTeleop;
  List<Widget?> get teleopChildren => _teleopChildren;
  List<double?> get dxTeleop => _dxTeleop;
  List<double?> get dyTeleop => _dyTeleop;
  bool get teleopFlip => _teleopFlip;

  void updateIsCheckedTeleop(bool? input, int index){
    _isCheckedTeleop[index] = input;
  }
  void updateTeleopChildren(List<Widget?> input, List<double?> inputx, List<double?> inputy){
    _teleopChildren = input;
    _dxTeleop = inputx;
    _dyTeleop = inputy;
  }
  void updateTeleopFlip(bool input){
    _teleopFlip = input;
  }
// BELOW IS ENDGAME THIS CODE IS PAINFUL TO WRITE
  Duration _elapsedTimeEndgame = Duration.zero;
  ClimbLevel _endgameClimbLevel = ClimbLevel.Level1;

  Duration get elapsedTimeEndgame => _elapsedTimeEndgame;
  ClimbLevel get endgameClimbLevel => _endgameClimbLevel;

  void updateEndgameTimer(Duration input){
    _elapsedTimeEndgame = input;
  }
  void updateEndgameClimb(ClimbLevel input){
   _endgameClimbLevel = input; 
  }
// SUBMIT LAST PAGE FINALLY ALMOST DONE
  List<bool?> _isCheckedSubmit = [false, false, false, false, false];
  String _fuel = '';
  String _autoComments = '';
  String _beached = '';
  String _comments = '';
  DriverSkill _driverSkill = DriverSkill.nE;
  DefenseSkill _defenseSkill = DefenseSkill.dnpd;
  SpeedSkill _speedSkill = SpeedSkill.three;

  List<bool?> get isCheckedSubmit => _isCheckedSubmit;
  String get fuel => _fuel;
  String get autoComments => _autoComments;
  String get beached => _beached;
  String get comments => _comments;
  DriverSkill get driverSkill => _driverSkill;
  DefenseSkill get defenseSkill => _defenseSkill;
  SpeedSkill get speedSkill => _speedSkill;

  void updateIsCheckedSubmit(bool? input, int index){
    _isCheckedSubmit[index] = input;
  }
  void updateFuel(String input){
    _fuel = input;
  }
  void updateAutoComments(String input){
    _autoComments = input;
  }
  void updateBeached(String input){
    _beached = input;
  }
  void updateComments(String input){
    _comments = input;
  }
  void updateDriverSkill(DriverSkill input){
    _driverSkill = input;
  }
  void updateDefenseSkill(DefenseSkill input){
    _defenseSkill = input;
  }
  void updateSpeedSkill(SpeedSkill input){
    _speedSkill = input;
  }
}
