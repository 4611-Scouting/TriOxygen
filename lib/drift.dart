

import 'package:drift/drift.dart';
import 'package:trioxygen/state.dart';
import 'dart:convert';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:drift/drift.dart';
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
class DoubleListConverter extends TypeConverter<List<double?>, String> {
  const DoubleListConverter();

  @override
  List<double> fromSql(String fromDb) {
    return (jsonDecode(fromDb) as List).cast<double>();
  }

  @override
  String toSql(List<double?> value) {
    return jsonEncode(value);
  }
}
class boolListConverter extends TypeConverter<List<bool?>, String> {
  const boolListConverter();

  @override
  List<bool> fromSql(String fromDb) {
    return (jsonDecode(fromDb) as List).cast<bool>();
  }

  @override
  String toSql(List<bool?> value) {
    return jsonEncode(value);
  }
}
class DurationSecondsConverter extends TypeConverter<Duration, int> {
  const DurationSecondsConverter();

  @override
  Duration fromSql(int fromDb) => Duration(seconds: fromDb);

  @override
  int toSql(Duration value) => value.inSeconds;
}
class ScoutReports extends Table{
  TextColumn get username => text()();
  TextColumn get uuid => text()();
  IntColumn get matchNumber => integer()();
  IntColumn get teamNumber => integer()();
  BoolColumn get flip => boolean().withDefault(const Constant(false))();
  TextColumn get RobotPosition => text()();
  TextColumn get MatchLevel => text()();
  RealColumn get dx => real().nullable()();
  RealColumn get dy => real().nullable()();



IntColumn get elapsedTimeAuton => integer()
    .nullable()
    .map(NullAwareTypeConverter.wrap(const DurationSecondsConverter()))();
  TextColumn get autonClimb => text().nullable()();
  TextColumn get isCheckedAuton => text()
      .map(const boolListConverter())
      .withDefault(const Constant('[]'))();
  TextColumn get dxAuton => text()
      .map(const DoubleListConverter())
      .withDefault(const Constant('[]'))();
  TextColumn get dyAuton => text()
      .map(const DoubleListConverter())
      .withDefault(const Constant('[]'))();
  BoolColumn get autonFlip => boolean().withDefault(const Constant(false))();

  TextColumn get isCheckedTeleop => text()
      .map(const boolListConverter())
      .withDefault(const Constant('[]'))();
  TextColumn get dxTeleop => text()
      .map(const DoubleListConverter())
      .withDefault(const Constant('[]'))();
  TextColumn get dyTeleop => text()
      .map(const DoubleListConverter())
      .withDefault(const Constant('[]'))();
  BoolColumn get teleopFlip => boolean().withDefault(const Constant(false))();

  TextColumn get endgameClimbLevel => text().nullable()();
  IntColumn get elapsedTimeEndgame => integer()
    .nullable()
    .map(NullAwareTypeConverter.wrap(const DurationSecondsConverter()))();

  TextColumn get isCheckedSubmit => text()
      .map(const boolListConverter())
      .withDefault(const Constant('[]'))();
  IntColumn get fuel => integer().nullable()();
  TextColumn get autoComments => text().nullable()();
  IntColumn get beached => integer().nullable()();
  TextColumn get comments => text().nullable()();
  TextColumn get driverSkill => text().nullable()();
  TextColumn get defenseSkill => text().nullable()();
  TextColumn get speedSkill => text().nullable()();
}
@DriftDatabase(tables: [ScoutReports])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'scouting',
      web: DriftWebOptions(
        sqlite3Wasm: Uri.parse('sqlite3.wasm'),
        driftWorker: Uri.parse('drift_worker.js'),
      ),
    );
  }
}