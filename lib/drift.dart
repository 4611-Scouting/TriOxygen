

import 'package:drift/drift.dart';
import 'package:trioxygen/state.dart';
import 'dart:convert';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
part 'drift.g.dart';
class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();

  @override
  List<String> fromSql(String fromDb) {
    return (jsonDecode(fromDb) as List).cast<String>();
  }

  @override
  String toSql(List<String> value) {
    return jsonEncode(value);
  }
}
class IntListConverter extends TypeConverter<List<int>, String> {
  const IntListConverter();

  @override
  List<int> fromSql(String fromDb) {
    return (jsonDecode(fromDb) as List).cast<int>();
  }

  @override
  String toSql(List<int> value) {
    return jsonEncode(value);
  }
}
class boolListConverter extends TypeConverter<List<bool>, String> {
  const boolListConverter();

  @override
  List<bool> fromSql(String fromDb) {
    return (jsonDecode(fromDb) as List).cast<bool>();
  }

  @override
  String toSql(List<bool> value) {
    return jsonEncode(value);
  }
}
class ScoutReports extends Table{
  TextColumn get username => text()();
  IntColumn get matchNumber => integer()();
  IntColumn get teamNumber => integer()();
  BoolColumn get flip => boolean().withDefault(const Constant(false))();
  TextColumn get RobotPosition => text()();
  TextColumn get MatchLevel => text()();
  IntColumn get dx => integer()();
  IntColumn get dy => integer()();



  IntColumn get elapsedTimeAuton => integer()();
  TextColumn get autonClimb => text()();
  TextColumn get isCheckedAuton => text()
      .map(const boolListConverter())
      .withDefault(const Constant('[]'))();
  TextColumn get dxAuton => text()
      .map(const IntListConverter())
      .withDefault(const Constant('[]'))();
  TextColumn get dyAuton => text()
      .map(const IntListConverter())
      .withDefault(const Constant('[]'))();
  BoolColumn get autonFlip => boolean().withDefault(const Constant(false))();

  TextColumn get isCheckedTeleop => text()
      .map(const IntListConverter())
      .withDefault(const Constant('[]'))();
  TextColumn get dxTeleop => text()
      .map(const IntListConverter())
      .withDefault(const Constant('[]'))();
  TextColumn get dyTeleop => text()
      .map(const IntListConverter())
      .withDefault(const Constant('[]'))();
  BoolColumn get teleopFlip => boolean().withDefault(const Constant(false))();

  TextColumn get endgameClimbLevel => text()();
  IntColumn get elapsedTimeEndgame => integer()();

  TextColumn get isCheckedSubmit => text()
      .map(const boolListConverter())
      .withDefault(const Constant('[]'))();
  TextColumn get fuel => text()();
  TextColumn get autoComments => text()();
  TextColumn get beached => text()();
  TextColumn get comments => text()();
  TextColumn get driverSkill => text()();
  TextColumn get defenseSkill => text()();
  TextColumn get speedSkill => text()();
}
@DriftDatabase(tables: [ScoutReports])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'scouting.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}