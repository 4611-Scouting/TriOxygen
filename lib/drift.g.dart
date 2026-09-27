// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift.dart';

// ignore_for_file: type=lint
class $ScoutReportsTable extends ScoutReports
    with TableInfo<$ScoutReportsTable, ScoutReport> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ScoutReportsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _usernameMeta = const VerificationMeta(
    'username',
  );
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
    'username',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
    'uuid',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _matchNumberMeta = const VerificationMeta(
    'matchNumber',
  );
  @override
  late final GeneratedColumn<int> matchNumber = GeneratedColumn<int>(
    'match_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _teamNumberMeta = const VerificationMeta(
    'teamNumber',
  );
  @override
  late final GeneratedColumn<int> teamNumber = GeneratedColumn<int>(
    'team_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _flipMeta = const VerificationMeta('flip');
  @override
  late final GeneratedColumn<bool> flip = GeneratedColumn<bool>(
    'flip',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("flip" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _RobotPositionMeta = const VerificationMeta(
    'RobotPosition',
  );
  @override
  late final GeneratedColumn<String> RobotPosition = GeneratedColumn<String>(
    'robot_position',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _MatchLevelMeta = const VerificationMeta(
    'MatchLevel',
  );
  @override
  late final GeneratedColumn<String> MatchLevel = GeneratedColumn<String>(
    'match_level',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dxMeta = const VerificationMeta('dx');
  @override
  late final GeneratedColumn<double> dx = GeneratedColumn<double>(
    'dx',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _dyMeta = const VerificationMeta('dy');
  @override
  late final GeneratedColumn<double> dy = GeneratedColumn<double>(
    'dy',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Duration?, int> elapsedTimeAuton =
      GeneratedColumn<int>(
        'elapsed_time_auton',
        aliasedName,
        true,
        type: DriftSqlType.int,
        requiredDuringInsert: false,
      ).withConverter<Duration?>($ScoutReportsTable.$converterelapsedTimeAuton);
  static const VerificationMeta _autonClimbMeta = const VerificationMeta(
    'autonClimb',
  );
  @override
  late final GeneratedColumn<String> autonClimb = GeneratedColumn<String>(
    'auton_climb',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<bool>, String>
  isCheckedAuton = GeneratedColumn<String>(
    'is_checked_auton',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  ).withConverter<List<bool>>($ScoutReportsTable.$converterisCheckedAuton);
  @override
  late final GeneratedColumnWithTypeConverter<List<int>, String> dxAuton =
      GeneratedColumn<String>(
        'dx_auton',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      ).withConverter<List<int>>($ScoutReportsTable.$converterdxAuton);
  @override
  late final GeneratedColumnWithTypeConverter<List<int>, String> dyAuton =
      GeneratedColumn<String>(
        'dy_auton',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      ).withConverter<List<int>>($ScoutReportsTable.$converterdyAuton);
  static const VerificationMeta _autonFlipMeta = const VerificationMeta(
    'autonFlip',
  );
  @override
  late final GeneratedColumn<bool> autonFlip = GeneratedColumn<bool>(
    'auton_flip',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("auton_flip" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<int>, String>
  isCheckedTeleop = GeneratedColumn<String>(
    'is_checked_teleop',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  ).withConverter<List<int>>($ScoutReportsTable.$converterisCheckedTeleop);
  @override
  late final GeneratedColumnWithTypeConverter<List<int>, String> dxTeleop =
      GeneratedColumn<String>(
        'dx_teleop',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      ).withConverter<List<int>>($ScoutReportsTable.$converterdxTeleop);
  @override
  late final GeneratedColumnWithTypeConverter<List<int>, String> dyTeleop =
      GeneratedColumn<String>(
        'dy_teleop',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      ).withConverter<List<int>>($ScoutReportsTable.$converterdyTeleop);
  static const VerificationMeta _teleopFlipMeta = const VerificationMeta(
    'teleopFlip',
  );
  @override
  late final GeneratedColumn<bool> teleopFlip = GeneratedColumn<bool>(
    'teleop_flip',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("teleop_flip" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _endgameClimbLevelMeta = const VerificationMeta(
    'endgameClimbLevel',
  );
  @override
  late final GeneratedColumn<String> endgameClimbLevel =
      GeneratedColumn<String>(
        'endgame_climb_level',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _elapsedTimeEndgameMeta =
      const VerificationMeta('elapsedTimeEndgame');
  @override
  late final GeneratedColumn<int> elapsedTimeEndgame = GeneratedColumn<int>(
    'elapsed_time_endgame',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<bool>, String>
  isCheckedSubmit = GeneratedColumn<String>(
    'is_checked_submit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  ).withConverter<List<bool>>($ScoutReportsTable.$converterisCheckedSubmit);
  static const VerificationMeta _fuelMeta = const VerificationMeta('fuel');
  @override
  late final GeneratedColumn<String> fuel = GeneratedColumn<String>(
    'fuel',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _autoCommentsMeta = const VerificationMeta(
    'autoComments',
  );
  @override
  late final GeneratedColumn<String> autoComments = GeneratedColumn<String>(
    'auto_comments',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _beachedMeta = const VerificationMeta(
    'beached',
  );
  @override
  late final GeneratedColumn<String> beached = GeneratedColumn<String>(
    'beached',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _commentsMeta = const VerificationMeta(
    'comments',
  );
  @override
  late final GeneratedColumn<String> comments = GeneratedColumn<String>(
    'comments',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _driverSkillMeta = const VerificationMeta(
    'driverSkill',
  );
  @override
  late final GeneratedColumn<String> driverSkill = GeneratedColumn<String>(
    'driver_skill',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _defenseSkillMeta = const VerificationMeta(
    'defenseSkill',
  );
  @override
  late final GeneratedColumn<String> defenseSkill = GeneratedColumn<String>(
    'defense_skill',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _speedSkillMeta = const VerificationMeta(
    'speedSkill',
  );
  @override
  late final GeneratedColumn<String> speedSkill = GeneratedColumn<String>(
    'speed_skill',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    username,
    uuid,
    matchNumber,
    teamNumber,
    flip,
    RobotPosition,
    MatchLevel,
    dx,
    dy,
    elapsedTimeAuton,
    autonClimb,
    isCheckedAuton,
    dxAuton,
    dyAuton,
    autonFlip,
    isCheckedTeleop,
    dxTeleop,
    dyTeleop,
    teleopFlip,
    endgameClimbLevel,
    elapsedTimeEndgame,
    isCheckedSubmit,
    fuel,
    autoComments,
    beached,
    comments,
    driverSkill,
    defenseSkill,
    speedSkill,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'scout_reports';
  @override
  VerificationContext validateIntegrity(
    Insertable<ScoutReport> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('username')) {
      context.handle(
        _usernameMeta,
        username.isAcceptableOrUnknown(data['username']!, _usernameMeta),
      );
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('uuid')) {
      context.handle(
        _uuidMeta,
        uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta),
      );
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('match_number')) {
      context.handle(
        _matchNumberMeta,
        matchNumber.isAcceptableOrUnknown(
          data['match_number']!,
          _matchNumberMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_matchNumberMeta);
    }
    if (data.containsKey('team_number')) {
      context.handle(
        _teamNumberMeta,
        teamNumber.isAcceptableOrUnknown(data['team_number']!, _teamNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_teamNumberMeta);
    }
    if (data.containsKey('flip')) {
      context.handle(
        _flipMeta,
        flip.isAcceptableOrUnknown(data['flip']!, _flipMeta),
      );
    }
    if (data.containsKey('robot_position')) {
      context.handle(
        _RobotPositionMeta,
        RobotPosition.isAcceptableOrUnknown(
          data['robot_position']!,
          _RobotPositionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_RobotPositionMeta);
    }
    if (data.containsKey('match_level')) {
      context.handle(
        _MatchLevelMeta,
        MatchLevel.isAcceptableOrUnknown(data['match_level']!, _MatchLevelMeta),
      );
    } else if (isInserting) {
      context.missing(_MatchLevelMeta);
    }
    if (data.containsKey('dx')) {
      context.handle(_dxMeta, dx.isAcceptableOrUnknown(data['dx']!, _dxMeta));
    }
    if (data.containsKey('dy')) {
      context.handle(_dyMeta, dy.isAcceptableOrUnknown(data['dy']!, _dyMeta));
    }
    if (data.containsKey('auton_climb')) {
      context.handle(
        _autonClimbMeta,
        autonClimb.isAcceptableOrUnknown(data['auton_climb']!, _autonClimbMeta),
      );
    } else if (isInserting) {
      context.missing(_autonClimbMeta);
    }
    if (data.containsKey('auton_flip')) {
      context.handle(
        _autonFlipMeta,
        autonFlip.isAcceptableOrUnknown(data['auton_flip']!, _autonFlipMeta),
      );
    }
    if (data.containsKey('teleop_flip')) {
      context.handle(
        _teleopFlipMeta,
        teleopFlip.isAcceptableOrUnknown(data['teleop_flip']!, _teleopFlipMeta),
      );
    }
    if (data.containsKey('endgame_climb_level')) {
      context.handle(
        _endgameClimbLevelMeta,
        endgameClimbLevel.isAcceptableOrUnknown(
          data['endgame_climb_level']!,
          _endgameClimbLevelMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_endgameClimbLevelMeta);
    }
    if (data.containsKey('elapsed_time_endgame')) {
      context.handle(
        _elapsedTimeEndgameMeta,
        elapsedTimeEndgame.isAcceptableOrUnknown(
          data['elapsed_time_endgame']!,
          _elapsedTimeEndgameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_elapsedTimeEndgameMeta);
    }
    if (data.containsKey('fuel')) {
      context.handle(
        _fuelMeta,
        fuel.isAcceptableOrUnknown(data['fuel']!, _fuelMeta),
      );
    } else if (isInserting) {
      context.missing(_fuelMeta);
    }
    if (data.containsKey('auto_comments')) {
      context.handle(
        _autoCommentsMeta,
        autoComments.isAcceptableOrUnknown(
          data['auto_comments']!,
          _autoCommentsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_autoCommentsMeta);
    }
    if (data.containsKey('beached')) {
      context.handle(
        _beachedMeta,
        beached.isAcceptableOrUnknown(data['beached']!, _beachedMeta),
      );
    } else if (isInserting) {
      context.missing(_beachedMeta);
    }
    if (data.containsKey('comments')) {
      context.handle(
        _commentsMeta,
        comments.isAcceptableOrUnknown(data['comments']!, _commentsMeta),
      );
    } else if (isInserting) {
      context.missing(_commentsMeta);
    }
    if (data.containsKey('driver_skill')) {
      context.handle(
        _driverSkillMeta,
        driverSkill.isAcceptableOrUnknown(
          data['driver_skill']!,
          _driverSkillMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_driverSkillMeta);
    }
    if (data.containsKey('defense_skill')) {
      context.handle(
        _defenseSkillMeta,
        defenseSkill.isAcceptableOrUnknown(
          data['defense_skill']!,
          _defenseSkillMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_defenseSkillMeta);
    }
    if (data.containsKey('speed_skill')) {
      context.handle(
        _speedSkillMeta,
        speedSkill.isAcceptableOrUnknown(data['speed_skill']!, _speedSkillMeta),
      );
    } else if (isInserting) {
      context.missing(_speedSkillMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ScoutReport map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ScoutReport(
      username: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}username'],
      )!,
      uuid: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}uuid'],
      )!,
      matchNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}match_number'],
      )!,
      teamNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}team_number'],
      )!,
      flip: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}flip'],
      )!,
      RobotPosition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}robot_position'],
      )!,
      MatchLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}match_level'],
      )!,
      dx: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}dx'],
      ),
      dy: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}dy'],
      ),
      elapsedTimeAuton: $ScoutReportsTable.$converterelapsedTimeAuton.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}elapsed_time_auton'],
        ),
      ),
      autonClimb: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}auton_climb'],
      )!,
      isCheckedAuton: $ScoutReportsTable.$converterisCheckedAuton.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}is_checked_auton'],
        )!,
      ),
      dxAuton: $ScoutReportsTable.$converterdxAuton.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}dx_auton'],
        )!,
      ),
      dyAuton: $ScoutReportsTable.$converterdyAuton.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}dy_auton'],
        )!,
      ),
      autonFlip: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}auton_flip'],
      )!,
      isCheckedTeleop: $ScoutReportsTable.$converterisCheckedTeleop.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}is_checked_teleop'],
        )!,
      ),
      dxTeleop: $ScoutReportsTable.$converterdxTeleop.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}dx_teleop'],
        )!,
      ),
      dyTeleop: $ScoutReportsTable.$converterdyTeleop.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}dy_teleop'],
        )!,
      ),
      teleopFlip: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}teleop_flip'],
      )!,
      endgameClimbLevel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}endgame_climb_level'],
      )!,
      elapsedTimeEndgame: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}elapsed_time_endgame'],
      )!,
      isCheckedSubmit: $ScoutReportsTable.$converterisCheckedSubmit.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}is_checked_submit'],
        )!,
      ),
      fuel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fuel'],
      )!,
      autoComments: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}auto_comments'],
      )!,
      beached: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}beached'],
      )!,
      comments: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comments'],
      )!,
      driverSkill: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}driver_skill'],
      )!,
      defenseSkill: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}defense_skill'],
      )!,
      speedSkill: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}speed_skill'],
      )!,
    );
  }

  @override
  $ScoutReportsTable createAlias(String alias) {
    return $ScoutReportsTable(attachedDatabase, alias);
  }

  static TypeConverter<Duration?, int?> $converterelapsedTimeAuton =
      NullAwareTypeConverter.wrap(const DurationSecondsConverter());
  static TypeConverter<List<bool>, String> $converterisCheckedAuton =
      const boolListConverter();
  static TypeConverter<List<int>, String> $converterdxAuton =
      const IntListConverter();
  static TypeConverter<List<int>, String> $converterdyAuton =
      const IntListConverter();
  static TypeConverter<List<int>, String> $converterisCheckedTeleop =
      const IntListConverter();
  static TypeConverter<List<int>, String> $converterdxTeleop =
      const IntListConverter();
  static TypeConverter<List<int>, String> $converterdyTeleop =
      const IntListConverter();
  static TypeConverter<List<bool>, String> $converterisCheckedSubmit =
      const boolListConverter();
}

class ScoutReport extends DataClass implements Insertable<ScoutReport> {
  final String username;
  final String uuid;
  final int matchNumber;
  final int teamNumber;
  final bool flip;
  final String RobotPosition;
  final String MatchLevel;
  final double? dx;
  final double? dy;
  final Duration? elapsedTimeAuton;
  final String autonClimb;
  final List<bool> isCheckedAuton;
  final List<int> dxAuton;
  final List<int> dyAuton;
  final bool autonFlip;
  final List<int> isCheckedTeleop;
  final List<int> dxTeleop;
  final List<int> dyTeleop;
  final bool teleopFlip;
  final String endgameClimbLevel;
  final int elapsedTimeEndgame;
  final List<bool> isCheckedSubmit;
  final String fuel;
  final String autoComments;
  final String beached;
  final String comments;
  final String driverSkill;
  final String defenseSkill;
  final String speedSkill;
  const ScoutReport({
    required this.username,
    required this.uuid,
    required this.matchNumber,
    required this.teamNumber,
    required this.flip,
    required this.RobotPosition,
    required this.MatchLevel,
    this.dx,
    this.dy,
    this.elapsedTimeAuton,
    required this.autonClimb,
    required this.isCheckedAuton,
    required this.dxAuton,
    required this.dyAuton,
    required this.autonFlip,
    required this.isCheckedTeleop,
    required this.dxTeleop,
    required this.dyTeleop,
    required this.teleopFlip,
    required this.endgameClimbLevel,
    required this.elapsedTimeEndgame,
    required this.isCheckedSubmit,
    required this.fuel,
    required this.autoComments,
    required this.beached,
    required this.comments,
    required this.driverSkill,
    required this.defenseSkill,
    required this.speedSkill,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['username'] = Variable<String>(username);
    map['uuid'] = Variable<String>(uuid);
    map['match_number'] = Variable<int>(matchNumber);
    map['team_number'] = Variable<int>(teamNumber);
    map['flip'] = Variable<bool>(flip);
    map['robot_position'] = Variable<String>(RobotPosition);
    map['match_level'] = Variable<String>(MatchLevel);
    if (!nullToAbsent || dx != null) {
      map['dx'] = Variable<double>(dx);
    }
    if (!nullToAbsent || dy != null) {
      map['dy'] = Variable<double>(dy);
    }
    if (!nullToAbsent || elapsedTimeAuton != null) {
      map['elapsed_time_auton'] = Variable<int>(
        $ScoutReportsTable.$converterelapsedTimeAuton.toSql(elapsedTimeAuton),
      );
    }
    map['auton_climb'] = Variable<String>(autonClimb);
    {
      map['is_checked_auton'] = Variable<String>(
        $ScoutReportsTable.$converterisCheckedAuton.toSql(isCheckedAuton),
      );
    }
    {
      map['dx_auton'] = Variable<String>(
        $ScoutReportsTable.$converterdxAuton.toSql(dxAuton),
      );
    }
    {
      map['dy_auton'] = Variable<String>(
        $ScoutReportsTable.$converterdyAuton.toSql(dyAuton),
      );
    }
    map['auton_flip'] = Variable<bool>(autonFlip);
    {
      map['is_checked_teleop'] = Variable<String>(
        $ScoutReportsTable.$converterisCheckedTeleop.toSql(isCheckedTeleop),
      );
    }
    {
      map['dx_teleop'] = Variable<String>(
        $ScoutReportsTable.$converterdxTeleop.toSql(dxTeleop),
      );
    }
    {
      map['dy_teleop'] = Variable<String>(
        $ScoutReportsTable.$converterdyTeleop.toSql(dyTeleop),
      );
    }
    map['teleop_flip'] = Variable<bool>(teleopFlip);
    map['endgame_climb_level'] = Variable<String>(endgameClimbLevel);
    map['elapsed_time_endgame'] = Variable<int>(elapsedTimeEndgame);
    {
      map['is_checked_submit'] = Variable<String>(
        $ScoutReportsTable.$converterisCheckedSubmit.toSql(isCheckedSubmit),
      );
    }
    map['fuel'] = Variable<String>(fuel);
    map['auto_comments'] = Variable<String>(autoComments);
    map['beached'] = Variable<String>(beached);
    map['comments'] = Variable<String>(comments);
    map['driver_skill'] = Variable<String>(driverSkill);
    map['defense_skill'] = Variable<String>(defenseSkill);
    map['speed_skill'] = Variable<String>(speedSkill);
    return map;
  }

  ScoutReportsCompanion toCompanion(bool nullToAbsent) {
    return ScoutReportsCompanion(
      username: Value(username),
      uuid: Value(uuid),
      matchNumber: Value(matchNumber),
      teamNumber: Value(teamNumber),
      flip: Value(flip),
      RobotPosition: Value(RobotPosition),
      MatchLevel: Value(MatchLevel),
      dx: dx == null && nullToAbsent ? const Value.absent() : Value(dx),
      dy: dy == null && nullToAbsent ? const Value.absent() : Value(dy),
      elapsedTimeAuton: elapsedTimeAuton == null && nullToAbsent
          ? const Value.absent()
          : Value(elapsedTimeAuton),
      autonClimb: Value(autonClimb),
      isCheckedAuton: Value(isCheckedAuton),
      dxAuton: Value(dxAuton),
      dyAuton: Value(dyAuton),
      autonFlip: Value(autonFlip),
      isCheckedTeleop: Value(isCheckedTeleop),
      dxTeleop: Value(dxTeleop),
      dyTeleop: Value(dyTeleop),
      teleopFlip: Value(teleopFlip),
      endgameClimbLevel: Value(endgameClimbLevel),
      elapsedTimeEndgame: Value(elapsedTimeEndgame),
      isCheckedSubmit: Value(isCheckedSubmit),
      fuel: Value(fuel),
      autoComments: Value(autoComments),
      beached: Value(beached),
      comments: Value(comments),
      driverSkill: Value(driverSkill),
      defenseSkill: Value(defenseSkill),
      speedSkill: Value(speedSkill),
    );
  }

  factory ScoutReport.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ScoutReport(
      username: serializer.fromJson<String>(json['username']),
      uuid: serializer.fromJson<String>(json['uuid']),
      matchNumber: serializer.fromJson<int>(json['matchNumber']),
      teamNumber: serializer.fromJson<int>(json['teamNumber']),
      flip: serializer.fromJson<bool>(json['flip']),
      RobotPosition: serializer.fromJson<String>(json['RobotPosition']),
      MatchLevel: serializer.fromJson<String>(json['MatchLevel']),
      dx: serializer.fromJson<double?>(json['dx']),
      dy: serializer.fromJson<double?>(json['dy']),
      elapsedTimeAuton: serializer.fromJson<Duration?>(
        json['elapsedTimeAuton'],
      ),
      autonClimb: serializer.fromJson<String>(json['autonClimb']),
      isCheckedAuton: serializer.fromJson<List<bool>>(json['isCheckedAuton']),
      dxAuton: serializer.fromJson<List<int>>(json['dxAuton']),
      dyAuton: serializer.fromJson<List<int>>(json['dyAuton']),
      autonFlip: serializer.fromJson<bool>(json['autonFlip']),
      isCheckedTeleop: serializer.fromJson<List<int>>(json['isCheckedTeleop']),
      dxTeleop: serializer.fromJson<List<int>>(json['dxTeleop']),
      dyTeleop: serializer.fromJson<List<int>>(json['dyTeleop']),
      teleopFlip: serializer.fromJson<bool>(json['teleopFlip']),
      endgameClimbLevel: serializer.fromJson<String>(json['endgameClimbLevel']),
      elapsedTimeEndgame: serializer.fromJson<int>(json['elapsedTimeEndgame']),
      isCheckedSubmit: serializer.fromJson<List<bool>>(json['isCheckedSubmit']),
      fuel: serializer.fromJson<String>(json['fuel']),
      autoComments: serializer.fromJson<String>(json['autoComments']),
      beached: serializer.fromJson<String>(json['beached']),
      comments: serializer.fromJson<String>(json['comments']),
      driverSkill: serializer.fromJson<String>(json['driverSkill']),
      defenseSkill: serializer.fromJson<String>(json['defenseSkill']),
      speedSkill: serializer.fromJson<String>(json['speedSkill']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'username': serializer.toJson<String>(username),
      'uuid': serializer.toJson<String>(uuid),
      'matchNumber': serializer.toJson<int>(matchNumber),
      'teamNumber': serializer.toJson<int>(teamNumber),
      'flip': serializer.toJson<bool>(flip),
      'RobotPosition': serializer.toJson<String>(RobotPosition),
      'MatchLevel': serializer.toJson<String>(MatchLevel),
      'dx': serializer.toJson<double?>(dx),
      'dy': serializer.toJson<double?>(dy),
      'elapsedTimeAuton': serializer.toJson<Duration?>(elapsedTimeAuton),
      'autonClimb': serializer.toJson<String>(autonClimb),
      'isCheckedAuton': serializer.toJson<List<bool>>(isCheckedAuton),
      'dxAuton': serializer.toJson<List<int>>(dxAuton),
      'dyAuton': serializer.toJson<List<int>>(dyAuton),
      'autonFlip': serializer.toJson<bool>(autonFlip),
      'isCheckedTeleop': serializer.toJson<List<int>>(isCheckedTeleop),
      'dxTeleop': serializer.toJson<List<int>>(dxTeleop),
      'dyTeleop': serializer.toJson<List<int>>(dyTeleop),
      'teleopFlip': serializer.toJson<bool>(teleopFlip),
      'endgameClimbLevel': serializer.toJson<String>(endgameClimbLevel),
      'elapsedTimeEndgame': serializer.toJson<int>(elapsedTimeEndgame),
      'isCheckedSubmit': serializer.toJson<List<bool>>(isCheckedSubmit),
      'fuel': serializer.toJson<String>(fuel),
      'autoComments': serializer.toJson<String>(autoComments),
      'beached': serializer.toJson<String>(beached),
      'comments': serializer.toJson<String>(comments),
      'driverSkill': serializer.toJson<String>(driverSkill),
      'defenseSkill': serializer.toJson<String>(defenseSkill),
      'speedSkill': serializer.toJson<String>(speedSkill),
    };
  }

  ScoutReport copyWith({
    String? username,
    String? uuid,
    int? matchNumber,
    int? teamNumber,
    bool? flip,
    String? RobotPosition,
    String? MatchLevel,
    Value<double?> dx = const Value.absent(),
    Value<double?> dy = const Value.absent(),
    Value<Duration?> elapsedTimeAuton = const Value.absent(),
    String? autonClimb,
    List<bool>? isCheckedAuton,
    List<int>? dxAuton,
    List<int>? dyAuton,
    bool? autonFlip,
    List<int>? isCheckedTeleop,
    List<int>? dxTeleop,
    List<int>? dyTeleop,
    bool? teleopFlip,
    String? endgameClimbLevel,
    int? elapsedTimeEndgame,
    List<bool>? isCheckedSubmit,
    String? fuel,
    String? autoComments,
    String? beached,
    String? comments,
    String? driverSkill,
    String? defenseSkill,
    String? speedSkill,
  }) => ScoutReport(
    username: username ?? this.username,
    uuid: uuid ?? this.uuid,
    matchNumber: matchNumber ?? this.matchNumber,
    teamNumber: teamNumber ?? this.teamNumber,
    flip: flip ?? this.flip,
    RobotPosition: RobotPosition ?? this.RobotPosition,
    MatchLevel: MatchLevel ?? this.MatchLevel,
    dx: dx.present ? dx.value : this.dx,
    dy: dy.present ? dy.value : this.dy,
    elapsedTimeAuton: elapsedTimeAuton.present
        ? elapsedTimeAuton.value
        : this.elapsedTimeAuton,
    autonClimb: autonClimb ?? this.autonClimb,
    isCheckedAuton: isCheckedAuton ?? this.isCheckedAuton,
    dxAuton: dxAuton ?? this.dxAuton,
    dyAuton: dyAuton ?? this.dyAuton,
    autonFlip: autonFlip ?? this.autonFlip,
    isCheckedTeleop: isCheckedTeleop ?? this.isCheckedTeleop,
    dxTeleop: dxTeleop ?? this.dxTeleop,
    dyTeleop: dyTeleop ?? this.dyTeleop,
    teleopFlip: teleopFlip ?? this.teleopFlip,
    endgameClimbLevel: endgameClimbLevel ?? this.endgameClimbLevel,
    elapsedTimeEndgame: elapsedTimeEndgame ?? this.elapsedTimeEndgame,
    isCheckedSubmit: isCheckedSubmit ?? this.isCheckedSubmit,
    fuel: fuel ?? this.fuel,
    autoComments: autoComments ?? this.autoComments,
    beached: beached ?? this.beached,
    comments: comments ?? this.comments,
    driverSkill: driverSkill ?? this.driverSkill,
    defenseSkill: defenseSkill ?? this.defenseSkill,
    speedSkill: speedSkill ?? this.speedSkill,
  );
  ScoutReport copyWithCompanion(ScoutReportsCompanion data) {
    return ScoutReport(
      username: data.username.present ? data.username.value : this.username,
      uuid: data.uuid.present ? data.uuid.value : this.uuid,
      matchNumber: data.matchNumber.present
          ? data.matchNumber.value
          : this.matchNumber,
      teamNumber: data.teamNumber.present
          ? data.teamNumber.value
          : this.teamNumber,
      flip: data.flip.present ? data.flip.value : this.flip,
      RobotPosition: data.RobotPosition.present
          ? data.RobotPosition.value
          : this.RobotPosition,
      MatchLevel: data.MatchLevel.present
          ? data.MatchLevel.value
          : this.MatchLevel,
      dx: data.dx.present ? data.dx.value : this.dx,
      dy: data.dy.present ? data.dy.value : this.dy,
      elapsedTimeAuton: data.elapsedTimeAuton.present
          ? data.elapsedTimeAuton.value
          : this.elapsedTimeAuton,
      autonClimb: data.autonClimb.present
          ? data.autonClimb.value
          : this.autonClimb,
      isCheckedAuton: data.isCheckedAuton.present
          ? data.isCheckedAuton.value
          : this.isCheckedAuton,
      dxAuton: data.dxAuton.present ? data.dxAuton.value : this.dxAuton,
      dyAuton: data.dyAuton.present ? data.dyAuton.value : this.dyAuton,
      autonFlip: data.autonFlip.present ? data.autonFlip.value : this.autonFlip,
      isCheckedTeleop: data.isCheckedTeleop.present
          ? data.isCheckedTeleop.value
          : this.isCheckedTeleop,
      dxTeleop: data.dxTeleop.present ? data.dxTeleop.value : this.dxTeleop,
      dyTeleop: data.dyTeleop.present ? data.dyTeleop.value : this.dyTeleop,
      teleopFlip: data.teleopFlip.present
          ? data.teleopFlip.value
          : this.teleopFlip,
      endgameClimbLevel: data.endgameClimbLevel.present
          ? data.endgameClimbLevel.value
          : this.endgameClimbLevel,
      elapsedTimeEndgame: data.elapsedTimeEndgame.present
          ? data.elapsedTimeEndgame.value
          : this.elapsedTimeEndgame,
      isCheckedSubmit: data.isCheckedSubmit.present
          ? data.isCheckedSubmit.value
          : this.isCheckedSubmit,
      fuel: data.fuel.present ? data.fuel.value : this.fuel,
      autoComments: data.autoComments.present
          ? data.autoComments.value
          : this.autoComments,
      beached: data.beached.present ? data.beached.value : this.beached,
      comments: data.comments.present ? data.comments.value : this.comments,
      driverSkill: data.driverSkill.present
          ? data.driverSkill.value
          : this.driverSkill,
      defenseSkill: data.defenseSkill.present
          ? data.defenseSkill.value
          : this.defenseSkill,
      speedSkill: data.speedSkill.present
          ? data.speedSkill.value
          : this.speedSkill,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ScoutReport(')
          ..write('username: $username, ')
          ..write('uuid: $uuid, ')
          ..write('matchNumber: $matchNumber, ')
          ..write('teamNumber: $teamNumber, ')
          ..write('flip: $flip, ')
          ..write('RobotPosition: $RobotPosition, ')
          ..write('MatchLevel: $MatchLevel, ')
          ..write('dx: $dx, ')
          ..write('dy: $dy, ')
          ..write('elapsedTimeAuton: $elapsedTimeAuton, ')
          ..write('autonClimb: $autonClimb, ')
          ..write('isCheckedAuton: $isCheckedAuton, ')
          ..write('dxAuton: $dxAuton, ')
          ..write('dyAuton: $dyAuton, ')
          ..write('autonFlip: $autonFlip, ')
          ..write('isCheckedTeleop: $isCheckedTeleop, ')
          ..write('dxTeleop: $dxTeleop, ')
          ..write('dyTeleop: $dyTeleop, ')
          ..write('teleopFlip: $teleopFlip, ')
          ..write('endgameClimbLevel: $endgameClimbLevel, ')
          ..write('elapsedTimeEndgame: $elapsedTimeEndgame, ')
          ..write('isCheckedSubmit: $isCheckedSubmit, ')
          ..write('fuel: $fuel, ')
          ..write('autoComments: $autoComments, ')
          ..write('beached: $beached, ')
          ..write('comments: $comments, ')
          ..write('driverSkill: $driverSkill, ')
          ..write('defenseSkill: $defenseSkill, ')
          ..write('speedSkill: $speedSkill')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    username,
    uuid,
    matchNumber,
    teamNumber,
    flip,
    RobotPosition,
    MatchLevel,
    dx,
    dy,
    elapsedTimeAuton,
    autonClimb,
    isCheckedAuton,
    dxAuton,
    dyAuton,
    autonFlip,
    isCheckedTeleop,
    dxTeleop,
    dyTeleop,
    teleopFlip,
    endgameClimbLevel,
    elapsedTimeEndgame,
    isCheckedSubmit,
    fuel,
    autoComments,
    beached,
    comments,
    driverSkill,
    defenseSkill,
    speedSkill,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScoutReport &&
          other.username == this.username &&
          other.uuid == this.uuid &&
          other.matchNumber == this.matchNumber &&
          other.teamNumber == this.teamNumber &&
          other.flip == this.flip &&
          other.RobotPosition == this.RobotPosition &&
          other.MatchLevel == this.MatchLevel &&
          other.dx == this.dx &&
          other.dy == this.dy &&
          other.elapsedTimeAuton == this.elapsedTimeAuton &&
          other.autonClimb == this.autonClimb &&
          other.isCheckedAuton == this.isCheckedAuton &&
          other.dxAuton == this.dxAuton &&
          other.dyAuton == this.dyAuton &&
          other.autonFlip == this.autonFlip &&
          other.isCheckedTeleop == this.isCheckedTeleop &&
          other.dxTeleop == this.dxTeleop &&
          other.dyTeleop == this.dyTeleop &&
          other.teleopFlip == this.teleopFlip &&
          other.endgameClimbLevel == this.endgameClimbLevel &&
          other.elapsedTimeEndgame == this.elapsedTimeEndgame &&
          other.isCheckedSubmit == this.isCheckedSubmit &&
          other.fuel == this.fuel &&
          other.autoComments == this.autoComments &&
          other.beached == this.beached &&
          other.comments == this.comments &&
          other.driverSkill == this.driverSkill &&
          other.defenseSkill == this.defenseSkill &&
          other.speedSkill == this.speedSkill);
}

class ScoutReportsCompanion extends UpdateCompanion<ScoutReport> {
  final Value<String> username;
  final Value<String> uuid;
  final Value<int> matchNumber;
  final Value<int> teamNumber;
  final Value<bool> flip;
  final Value<String> RobotPosition;
  final Value<String> MatchLevel;
  final Value<double?> dx;
  final Value<double?> dy;
  final Value<Duration?> elapsedTimeAuton;
  final Value<String> autonClimb;
  final Value<List<bool>> isCheckedAuton;
  final Value<List<int>> dxAuton;
  final Value<List<int>> dyAuton;
  final Value<bool> autonFlip;
  final Value<List<int>> isCheckedTeleop;
  final Value<List<int>> dxTeleop;
  final Value<List<int>> dyTeleop;
  final Value<bool> teleopFlip;
  final Value<String> endgameClimbLevel;
  final Value<int> elapsedTimeEndgame;
  final Value<List<bool>> isCheckedSubmit;
  final Value<String> fuel;
  final Value<String> autoComments;
  final Value<String> beached;
  final Value<String> comments;
  final Value<String> driverSkill;
  final Value<String> defenseSkill;
  final Value<String> speedSkill;
  final Value<int> rowid;
  const ScoutReportsCompanion({
    this.username = const Value.absent(),
    this.uuid = const Value.absent(),
    this.matchNumber = const Value.absent(),
    this.teamNumber = const Value.absent(),
    this.flip = const Value.absent(),
    this.RobotPosition = const Value.absent(),
    this.MatchLevel = const Value.absent(),
    this.dx = const Value.absent(),
    this.dy = const Value.absent(),
    this.elapsedTimeAuton = const Value.absent(),
    this.autonClimb = const Value.absent(),
    this.isCheckedAuton = const Value.absent(),
    this.dxAuton = const Value.absent(),
    this.dyAuton = const Value.absent(),
    this.autonFlip = const Value.absent(),
    this.isCheckedTeleop = const Value.absent(),
    this.dxTeleop = const Value.absent(),
    this.dyTeleop = const Value.absent(),
    this.teleopFlip = const Value.absent(),
    this.endgameClimbLevel = const Value.absent(),
    this.elapsedTimeEndgame = const Value.absent(),
    this.isCheckedSubmit = const Value.absent(),
    this.fuel = const Value.absent(),
    this.autoComments = const Value.absent(),
    this.beached = const Value.absent(),
    this.comments = const Value.absent(),
    this.driverSkill = const Value.absent(),
    this.defenseSkill = const Value.absent(),
    this.speedSkill = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ScoutReportsCompanion.insert({
    required String username,
    required String uuid,
    required int matchNumber,
    required int teamNumber,
    this.flip = const Value.absent(),
    required String RobotPosition,
    required String MatchLevel,
    this.dx = const Value.absent(),
    this.dy = const Value.absent(),
    this.elapsedTimeAuton = const Value.absent(),
    required String autonClimb,
    this.isCheckedAuton = const Value.absent(),
    this.dxAuton = const Value.absent(),
    this.dyAuton = const Value.absent(),
    this.autonFlip = const Value.absent(),
    this.isCheckedTeleop = const Value.absent(),
    this.dxTeleop = const Value.absent(),
    this.dyTeleop = const Value.absent(),
    this.teleopFlip = const Value.absent(),
    required String endgameClimbLevel,
    required int elapsedTimeEndgame,
    this.isCheckedSubmit = const Value.absent(),
    required String fuel,
    required String autoComments,
    required String beached,
    required String comments,
    required String driverSkill,
    required String defenseSkill,
    required String speedSkill,
    this.rowid = const Value.absent(),
  }) : username = Value(username),
       uuid = Value(uuid),
       matchNumber = Value(matchNumber),
       teamNumber = Value(teamNumber),
       RobotPosition = Value(RobotPosition),
       MatchLevel = Value(MatchLevel),
       autonClimb = Value(autonClimb),
       endgameClimbLevel = Value(endgameClimbLevel),
       elapsedTimeEndgame = Value(elapsedTimeEndgame),
       fuel = Value(fuel),
       autoComments = Value(autoComments),
       beached = Value(beached),
       comments = Value(comments),
       driverSkill = Value(driverSkill),
       defenseSkill = Value(defenseSkill),
       speedSkill = Value(speedSkill);
  static Insertable<ScoutReport> custom({
    Expression<String>? username,
    Expression<String>? uuid,
    Expression<int>? matchNumber,
    Expression<int>? teamNumber,
    Expression<bool>? flip,
    Expression<String>? RobotPosition,
    Expression<String>? MatchLevel,
    Expression<double>? dx,
    Expression<double>? dy,
    Expression<int>? elapsedTimeAuton,
    Expression<String>? autonClimb,
    Expression<String>? isCheckedAuton,
    Expression<String>? dxAuton,
    Expression<String>? dyAuton,
    Expression<bool>? autonFlip,
    Expression<String>? isCheckedTeleop,
    Expression<String>? dxTeleop,
    Expression<String>? dyTeleop,
    Expression<bool>? teleopFlip,
    Expression<String>? endgameClimbLevel,
    Expression<int>? elapsedTimeEndgame,
    Expression<String>? isCheckedSubmit,
    Expression<String>? fuel,
    Expression<String>? autoComments,
    Expression<String>? beached,
    Expression<String>? comments,
    Expression<String>? driverSkill,
    Expression<String>? defenseSkill,
    Expression<String>? speedSkill,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (username != null) 'username': username,
      if (uuid != null) 'uuid': uuid,
      if (matchNumber != null) 'match_number': matchNumber,
      if (teamNumber != null) 'team_number': teamNumber,
      if (flip != null) 'flip': flip,
      if (RobotPosition != null) 'robot_position': RobotPosition,
      if (MatchLevel != null) 'match_level': MatchLevel,
      if (dx != null) 'dx': dx,
      if (dy != null) 'dy': dy,
      if (elapsedTimeAuton != null) 'elapsed_time_auton': elapsedTimeAuton,
      if (autonClimb != null) 'auton_climb': autonClimb,
      if (isCheckedAuton != null) 'is_checked_auton': isCheckedAuton,
      if (dxAuton != null) 'dx_auton': dxAuton,
      if (dyAuton != null) 'dy_auton': dyAuton,
      if (autonFlip != null) 'auton_flip': autonFlip,
      if (isCheckedTeleop != null) 'is_checked_teleop': isCheckedTeleop,
      if (dxTeleop != null) 'dx_teleop': dxTeleop,
      if (dyTeleop != null) 'dy_teleop': dyTeleop,
      if (teleopFlip != null) 'teleop_flip': teleopFlip,
      if (endgameClimbLevel != null) 'endgame_climb_level': endgameClimbLevel,
      if (elapsedTimeEndgame != null)
        'elapsed_time_endgame': elapsedTimeEndgame,
      if (isCheckedSubmit != null) 'is_checked_submit': isCheckedSubmit,
      if (fuel != null) 'fuel': fuel,
      if (autoComments != null) 'auto_comments': autoComments,
      if (beached != null) 'beached': beached,
      if (comments != null) 'comments': comments,
      if (driverSkill != null) 'driver_skill': driverSkill,
      if (defenseSkill != null) 'defense_skill': defenseSkill,
      if (speedSkill != null) 'speed_skill': speedSkill,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ScoutReportsCompanion copyWith({
    Value<String>? username,
    Value<String>? uuid,
    Value<int>? matchNumber,
    Value<int>? teamNumber,
    Value<bool>? flip,
    Value<String>? RobotPosition,
    Value<String>? MatchLevel,
    Value<double?>? dx,
    Value<double?>? dy,
    Value<Duration?>? elapsedTimeAuton,
    Value<String>? autonClimb,
    Value<List<bool>>? isCheckedAuton,
    Value<List<int>>? dxAuton,
    Value<List<int>>? dyAuton,
    Value<bool>? autonFlip,
    Value<List<int>>? isCheckedTeleop,
    Value<List<int>>? dxTeleop,
    Value<List<int>>? dyTeleop,
    Value<bool>? teleopFlip,
    Value<String>? endgameClimbLevel,
    Value<int>? elapsedTimeEndgame,
    Value<List<bool>>? isCheckedSubmit,
    Value<String>? fuel,
    Value<String>? autoComments,
    Value<String>? beached,
    Value<String>? comments,
    Value<String>? driverSkill,
    Value<String>? defenseSkill,
    Value<String>? speedSkill,
    Value<int>? rowid,
  }) {
    return ScoutReportsCompanion(
      username: username ?? this.username,
      uuid: uuid ?? this.uuid,
      matchNumber: matchNumber ?? this.matchNumber,
      teamNumber: teamNumber ?? this.teamNumber,
      flip: flip ?? this.flip,
      RobotPosition: RobotPosition ?? this.RobotPosition,
      MatchLevel: MatchLevel ?? this.MatchLevel,
      dx: dx ?? this.dx,
      dy: dy ?? this.dy,
      elapsedTimeAuton: elapsedTimeAuton ?? this.elapsedTimeAuton,
      autonClimb: autonClimb ?? this.autonClimb,
      isCheckedAuton: isCheckedAuton ?? this.isCheckedAuton,
      dxAuton: dxAuton ?? this.dxAuton,
      dyAuton: dyAuton ?? this.dyAuton,
      autonFlip: autonFlip ?? this.autonFlip,
      isCheckedTeleop: isCheckedTeleop ?? this.isCheckedTeleop,
      dxTeleop: dxTeleop ?? this.dxTeleop,
      dyTeleop: dyTeleop ?? this.dyTeleop,
      teleopFlip: teleopFlip ?? this.teleopFlip,
      endgameClimbLevel: endgameClimbLevel ?? this.endgameClimbLevel,
      elapsedTimeEndgame: elapsedTimeEndgame ?? this.elapsedTimeEndgame,
      isCheckedSubmit: isCheckedSubmit ?? this.isCheckedSubmit,
      fuel: fuel ?? this.fuel,
      autoComments: autoComments ?? this.autoComments,
      beached: beached ?? this.beached,
      comments: comments ?? this.comments,
      driverSkill: driverSkill ?? this.driverSkill,
      defenseSkill: defenseSkill ?? this.defenseSkill,
      speedSkill: speedSkill ?? this.speedSkill,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (matchNumber.present) {
      map['match_number'] = Variable<int>(matchNumber.value);
    }
    if (teamNumber.present) {
      map['team_number'] = Variable<int>(teamNumber.value);
    }
    if (flip.present) {
      map['flip'] = Variable<bool>(flip.value);
    }
    if (RobotPosition.present) {
      map['robot_position'] = Variable<String>(RobotPosition.value);
    }
    if (MatchLevel.present) {
      map['match_level'] = Variable<String>(MatchLevel.value);
    }
    if (dx.present) {
      map['dx'] = Variable<double>(dx.value);
    }
    if (dy.present) {
      map['dy'] = Variable<double>(dy.value);
    }
    if (elapsedTimeAuton.present) {
      map['elapsed_time_auton'] = Variable<int>(
        $ScoutReportsTable.$converterelapsedTimeAuton.toSql(
          elapsedTimeAuton.value,
        ),
      );
    }
    if (autonClimb.present) {
      map['auton_climb'] = Variable<String>(autonClimb.value);
    }
    if (isCheckedAuton.present) {
      map['is_checked_auton'] = Variable<String>(
        $ScoutReportsTable.$converterisCheckedAuton.toSql(isCheckedAuton.value),
      );
    }
    if (dxAuton.present) {
      map['dx_auton'] = Variable<String>(
        $ScoutReportsTable.$converterdxAuton.toSql(dxAuton.value),
      );
    }
    if (dyAuton.present) {
      map['dy_auton'] = Variable<String>(
        $ScoutReportsTable.$converterdyAuton.toSql(dyAuton.value),
      );
    }
    if (autonFlip.present) {
      map['auton_flip'] = Variable<bool>(autonFlip.value);
    }
    if (isCheckedTeleop.present) {
      map['is_checked_teleop'] = Variable<String>(
        $ScoutReportsTable.$converterisCheckedTeleop.toSql(
          isCheckedTeleop.value,
        ),
      );
    }
    if (dxTeleop.present) {
      map['dx_teleop'] = Variable<String>(
        $ScoutReportsTable.$converterdxTeleop.toSql(dxTeleop.value),
      );
    }
    if (dyTeleop.present) {
      map['dy_teleop'] = Variable<String>(
        $ScoutReportsTable.$converterdyTeleop.toSql(dyTeleop.value),
      );
    }
    if (teleopFlip.present) {
      map['teleop_flip'] = Variable<bool>(teleopFlip.value);
    }
    if (endgameClimbLevel.present) {
      map['endgame_climb_level'] = Variable<String>(endgameClimbLevel.value);
    }
    if (elapsedTimeEndgame.present) {
      map['elapsed_time_endgame'] = Variable<int>(elapsedTimeEndgame.value);
    }
    if (isCheckedSubmit.present) {
      map['is_checked_submit'] = Variable<String>(
        $ScoutReportsTable.$converterisCheckedSubmit.toSql(
          isCheckedSubmit.value,
        ),
      );
    }
    if (fuel.present) {
      map['fuel'] = Variable<String>(fuel.value);
    }
    if (autoComments.present) {
      map['auto_comments'] = Variable<String>(autoComments.value);
    }
    if (beached.present) {
      map['beached'] = Variable<String>(beached.value);
    }
    if (comments.present) {
      map['comments'] = Variable<String>(comments.value);
    }
    if (driverSkill.present) {
      map['driver_skill'] = Variable<String>(driverSkill.value);
    }
    if (defenseSkill.present) {
      map['defense_skill'] = Variable<String>(defenseSkill.value);
    }
    if (speedSkill.present) {
      map['speed_skill'] = Variable<String>(speedSkill.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScoutReportsCompanion(')
          ..write('username: $username, ')
          ..write('uuid: $uuid, ')
          ..write('matchNumber: $matchNumber, ')
          ..write('teamNumber: $teamNumber, ')
          ..write('flip: $flip, ')
          ..write('RobotPosition: $RobotPosition, ')
          ..write('MatchLevel: $MatchLevel, ')
          ..write('dx: $dx, ')
          ..write('dy: $dy, ')
          ..write('elapsedTimeAuton: $elapsedTimeAuton, ')
          ..write('autonClimb: $autonClimb, ')
          ..write('isCheckedAuton: $isCheckedAuton, ')
          ..write('dxAuton: $dxAuton, ')
          ..write('dyAuton: $dyAuton, ')
          ..write('autonFlip: $autonFlip, ')
          ..write('isCheckedTeleop: $isCheckedTeleop, ')
          ..write('dxTeleop: $dxTeleop, ')
          ..write('dyTeleop: $dyTeleop, ')
          ..write('teleopFlip: $teleopFlip, ')
          ..write('endgameClimbLevel: $endgameClimbLevel, ')
          ..write('elapsedTimeEndgame: $elapsedTimeEndgame, ')
          ..write('isCheckedSubmit: $isCheckedSubmit, ')
          ..write('fuel: $fuel, ')
          ..write('autoComments: $autoComments, ')
          ..write('beached: $beached, ')
          ..write('comments: $comments, ')
          ..write('driverSkill: $driverSkill, ')
          ..write('defenseSkill: $defenseSkill, ')
          ..write('speedSkill: $speedSkill, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ScoutReportsTable scoutReports = $ScoutReportsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [scoutReports];
}

typedef $$ScoutReportsTableCreateCompanionBuilder =
    ScoutReportsCompanion Function({
      required String username,
      required String uuid,
      required int matchNumber,
      required int teamNumber,
      Value<bool> flip,
      required String RobotPosition,
      required String MatchLevel,
      Value<double?> dx,
      Value<double?> dy,
      Value<Duration?> elapsedTimeAuton,
      required String autonClimb,
      Value<List<bool>> isCheckedAuton,
      Value<List<int>> dxAuton,
      Value<List<int>> dyAuton,
      Value<bool> autonFlip,
      Value<List<int>> isCheckedTeleop,
      Value<List<int>> dxTeleop,
      Value<List<int>> dyTeleop,
      Value<bool> teleopFlip,
      required String endgameClimbLevel,
      required int elapsedTimeEndgame,
      Value<List<bool>> isCheckedSubmit,
      required String fuel,
      required String autoComments,
      required String beached,
      required String comments,
      required String driverSkill,
      required String defenseSkill,
      required String speedSkill,
      Value<int> rowid,
    });
typedef $$ScoutReportsTableUpdateCompanionBuilder =
    ScoutReportsCompanion Function({
      Value<String> username,
      Value<String> uuid,
      Value<int> matchNumber,
      Value<int> teamNumber,
      Value<bool> flip,
      Value<String> RobotPosition,
      Value<String> MatchLevel,
      Value<double?> dx,
      Value<double?> dy,
      Value<Duration?> elapsedTimeAuton,
      Value<String> autonClimb,
      Value<List<bool>> isCheckedAuton,
      Value<List<int>> dxAuton,
      Value<List<int>> dyAuton,
      Value<bool> autonFlip,
      Value<List<int>> isCheckedTeleop,
      Value<List<int>> dxTeleop,
      Value<List<int>> dyTeleop,
      Value<bool> teleopFlip,
      Value<String> endgameClimbLevel,
      Value<int> elapsedTimeEndgame,
      Value<List<bool>> isCheckedSubmit,
      Value<String> fuel,
      Value<String> autoComments,
      Value<String> beached,
      Value<String> comments,
      Value<String> driverSkill,
      Value<String> defenseSkill,
      Value<String> speedSkill,
      Value<int> rowid,
    });

class $$ScoutReportsTableFilterComposer
    extends Composer<_$AppDatabase, $ScoutReportsTable> {
  $$ScoutReportsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get matchNumber => $composableBuilder(
    column: $table.matchNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get teamNumber => $composableBuilder(
    column: $table.teamNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get flip => $composableBuilder(
    column: $table.flip,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get RobotPosition => $composableBuilder(
    column: $table.RobotPosition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get MatchLevel => $composableBuilder(
    column: $table.MatchLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dx => $composableBuilder(
    column: $table.dx,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get dy => $composableBuilder(
    column: $table.dy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<Duration?, Duration, int>
  get elapsedTimeAuton => $composableBuilder(
    column: $table.elapsedTimeAuton,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get autonClimb => $composableBuilder(
    column: $table.autonClimb,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<bool>, List<bool>, String>
  get isCheckedAuton => $composableBuilder(
    column: $table.isCheckedAuton,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<List<int>, List<int>, String> get dxAuton =>
      $composableBuilder(
        column: $table.dxAuton,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<List<int>, List<int>, String> get dyAuton =>
      $composableBuilder(
        column: $table.dyAuton,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<bool> get autonFlip => $composableBuilder(
    column: $table.autonFlip,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<int>, List<int>, String>
  get isCheckedTeleop => $composableBuilder(
    column: $table.isCheckedTeleop,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnWithTypeConverterFilters<List<int>, List<int>, String> get dxTeleop =>
      $composableBuilder(
        column: $table.dxTeleop,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<List<int>, List<int>, String> get dyTeleop =>
      $composableBuilder(
        column: $table.dyTeleop,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<bool> get teleopFlip => $composableBuilder(
    column: $table.teleopFlip,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get endgameClimbLevel => $composableBuilder(
    column: $table.endgameClimbLevel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get elapsedTimeEndgame => $composableBuilder(
    column: $table.elapsedTimeEndgame,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<bool>, List<bool>, String>
  get isCheckedSubmit => $composableBuilder(
    column: $table.isCheckedSubmit,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get fuel => $composableBuilder(
    column: $table.fuel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get autoComments => $composableBuilder(
    column: $table.autoComments,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get beached => $composableBuilder(
    column: $table.beached,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comments => $composableBuilder(
    column: $table.comments,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get driverSkill => $composableBuilder(
    column: $table.driverSkill,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get defenseSkill => $composableBuilder(
    column: $table.defenseSkill,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get speedSkill => $composableBuilder(
    column: $table.speedSkill,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ScoutReportsTableOrderingComposer
    extends Composer<_$AppDatabase, $ScoutReportsTable> {
  $$ScoutReportsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uuid => $composableBuilder(
    column: $table.uuid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get matchNumber => $composableBuilder(
    column: $table.matchNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get teamNumber => $composableBuilder(
    column: $table.teamNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get flip => $composableBuilder(
    column: $table.flip,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get RobotPosition => $composableBuilder(
    column: $table.RobotPosition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get MatchLevel => $composableBuilder(
    column: $table.MatchLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dx => $composableBuilder(
    column: $table.dx,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get dy => $composableBuilder(
    column: $table.dy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get elapsedTimeAuton => $composableBuilder(
    column: $table.elapsedTimeAuton,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get autonClimb => $composableBuilder(
    column: $table.autonClimb,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get isCheckedAuton => $composableBuilder(
    column: $table.isCheckedAuton,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dxAuton => $composableBuilder(
    column: $table.dxAuton,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dyAuton => $composableBuilder(
    column: $table.dyAuton,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get autonFlip => $composableBuilder(
    column: $table.autonFlip,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get isCheckedTeleop => $composableBuilder(
    column: $table.isCheckedTeleop,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dxTeleop => $composableBuilder(
    column: $table.dxTeleop,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get dyTeleop => $composableBuilder(
    column: $table.dyTeleop,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get teleopFlip => $composableBuilder(
    column: $table.teleopFlip,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get endgameClimbLevel => $composableBuilder(
    column: $table.endgameClimbLevel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get elapsedTimeEndgame => $composableBuilder(
    column: $table.elapsedTimeEndgame,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get isCheckedSubmit => $composableBuilder(
    column: $table.isCheckedSubmit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fuel => $composableBuilder(
    column: $table.fuel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get autoComments => $composableBuilder(
    column: $table.autoComments,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get beached => $composableBuilder(
    column: $table.beached,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comments => $composableBuilder(
    column: $table.comments,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get driverSkill => $composableBuilder(
    column: $table.driverSkill,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get defenseSkill => $composableBuilder(
    column: $table.defenseSkill,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get speedSkill => $composableBuilder(
    column: $table.speedSkill,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ScoutReportsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ScoutReportsTable> {
  $$ScoutReportsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get uuid =>
      $composableBuilder(column: $table.uuid, builder: (column) => column);

  GeneratedColumn<int> get matchNumber => $composableBuilder(
    column: $table.matchNumber,
    builder: (column) => column,
  );

  GeneratedColumn<int> get teamNumber => $composableBuilder(
    column: $table.teamNumber,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get flip =>
      $composableBuilder(column: $table.flip, builder: (column) => column);

  GeneratedColumn<String> get RobotPosition => $composableBuilder(
    column: $table.RobotPosition,
    builder: (column) => column,
  );

  GeneratedColumn<String> get MatchLevel => $composableBuilder(
    column: $table.MatchLevel,
    builder: (column) => column,
  );

  GeneratedColumn<double> get dx =>
      $composableBuilder(column: $table.dx, builder: (column) => column);

  GeneratedColumn<double> get dy =>
      $composableBuilder(column: $table.dy, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Duration?, int> get elapsedTimeAuton =>
      $composableBuilder(
        column: $table.elapsedTimeAuton,
        builder: (column) => column,
      );

  GeneratedColumn<String> get autonClimb => $composableBuilder(
    column: $table.autonClimb,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<bool>, String> get isCheckedAuton =>
      $composableBuilder(
        column: $table.isCheckedAuton,
        builder: (column) => column,
      );

  GeneratedColumnWithTypeConverter<List<int>, String> get dxAuton =>
      $composableBuilder(column: $table.dxAuton, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<int>, String> get dyAuton =>
      $composableBuilder(column: $table.dyAuton, builder: (column) => column);

  GeneratedColumn<bool> get autonFlip =>
      $composableBuilder(column: $table.autonFlip, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<int>, String> get isCheckedTeleop =>
      $composableBuilder(
        column: $table.isCheckedTeleop,
        builder: (column) => column,
      );

  GeneratedColumnWithTypeConverter<List<int>, String> get dxTeleop =>
      $composableBuilder(column: $table.dxTeleop, builder: (column) => column);

  GeneratedColumnWithTypeConverter<List<int>, String> get dyTeleop =>
      $composableBuilder(column: $table.dyTeleop, builder: (column) => column);

  GeneratedColumn<bool> get teleopFlip => $composableBuilder(
    column: $table.teleopFlip,
    builder: (column) => column,
  );

  GeneratedColumn<String> get endgameClimbLevel => $composableBuilder(
    column: $table.endgameClimbLevel,
    builder: (column) => column,
  );

  GeneratedColumn<int> get elapsedTimeEndgame => $composableBuilder(
    column: $table.elapsedTimeEndgame,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<bool>, String> get isCheckedSubmit =>
      $composableBuilder(
        column: $table.isCheckedSubmit,
        builder: (column) => column,
      );

  GeneratedColumn<String> get fuel =>
      $composableBuilder(column: $table.fuel, builder: (column) => column);

  GeneratedColumn<String> get autoComments => $composableBuilder(
    column: $table.autoComments,
    builder: (column) => column,
  );

  GeneratedColumn<String> get beached =>
      $composableBuilder(column: $table.beached, builder: (column) => column);

  GeneratedColumn<String> get comments =>
      $composableBuilder(column: $table.comments, builder: (column) => column);

  GeneratedColumn<String> get driverSkill => $composableBuilder(
    column: $table.driverSkill,
    builder: (column) => column,
  );

  GeneratedColumn<String> get defenseSkill => $composableBuilder(
    column: $table.defenseSkill,
    builder: (column) => column,
  );

  GeneratedColumn<String> get speedSkill => $composableBuilder(
    column: $table.speedSkill,
    builder: (column) => column,
  );
}

class $$ScoutReportsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ScoutReportsTable,
          ScoutReport,
          $$ScoutReportsTableFilterComposer,
          $$ScoutReportsTableOrderingComposer,
          $$ScoutReportsTableAnnotationComposer,
          $$ScoutReportsTableCreateCompanionBuilder,
          $$ScoutReportsTableUpdateCompanionBuilder,
          (
            ScoutReport,
            BaseReferences<_$AppDatabase, $ScoutReportsTable, ScoutReport>,
          ),
          ScoutReport,
          PrefetchHooks Function()
        > {
  $$ScoutReportsTableTableManager(_$AppDatabase db, $ScoutReportsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ScoutReportsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ScoutReportsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ScoutReportsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> username = const Value.absent(),
                Value<String> uuid = const Value.absent(),
                Value<int> matchNumber = const Value.absent(),
                Value<int> teamNumber = const Value.absent(),
                Value<bool> flip = const Value.absent(),
                Value<String> RobotPosition = const Value.absent(),
                Value<String> MatchLevel = const Value.absent(),
                Value<double?> dx = const Value.absent(),
                Value<double?> dy = const Value.absent(),
                Value<Duration?> elapsedTimeAuton = const Value.absent(),
                Value<String> autonClimb = const Value.absent(),
                Value<List<bool>> isCheckedAuton = const Value.absent(),
                Value<List<int>> dxAuton = const Value.absent(),
                Value<List<int>> dyAuton = const Value.absent(),
                Value<bool> autonFlip = const Value.absent(),
                Value<List<int>> isCheckedTeleop = const Value.absent(),
                Value<List<int>> dxTeleop = const Value.absent(),
                Value<List<int>> dyTeleop = const Value.absent(),
                Value<bool> teleopFlip = const Value.absent(),
                Value<String> endgameClimbLevel = const Value.absent(),
                Value<int> elapsedTimeEndgame = const Value.absent(),
                Value<List<bool>> isCheckedSubmit = const Value.absent(),
                Value<String> fuel = const Value.absent(),
                Value<String> autoComments = const Value.absent(),
                Value<String> beached = const Value.absent(),
                Value<String> comments = const Value.absent(),
                Value<String> driverSkill = const Value.absent(),
                Value<String> defenseSkill = const Value.absent(),
                Value<String> speedSkill = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ScoutReportsCompanion(
                username: username,
                uuid: uuid,
                matchNumber: matchNumber,
                teamNumber: teamNumber,
                flip: flip,
                RobotPosition: RobotPosition,
                MatchLevel: MatchLevel,
                dx: dx,
                dy: dy,
                elapsedTimeAuton: elapsedTimeAuton,
                autonClimb: autonClimb,
                isCheckedAuton: isCheckedAuton,
                dxAuton: dxAuton,
                dyAuton: dyAuton,
                autonFlip: autonFlip,
                isCheckedTeleop: isCheckedTeleop,
                dxTeleop: dxTeleop,
                dyTeleop: dyTeleop,
                teleopFlip: teleopFlip,
                endgameClimbLevel: endgameClimbLevel,
                elapsedTimeEndgame: elapsedTimeEndgame,
                isCheckedSubmit: isCheckedSubmit,
                fuel: fuel,
                autoComments: autoComments,
                beached: beached,
                comments: comments,
                driverSkill: driverSkill,
                defenseSkill: defenseSkill,
                speedSkill: speedSkill,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String username,
                required String uuid,
                required int matchNumber,
                required int teamNumber,
                Value<bool> flip = const Value.absent(),
                required String RobotPosition,
                required String MatchLevel,
                Value<double?> dx = const Value.absent(),
                Value<double?> dy = const Value.absent(),
                Value<Duration?> elapsedTimeAuton = const Value.absent(),
                required String autonClimb,
                Value<List<bool>> isCheckedAuton = const Value.absent(),
                Value<List<int>> dxAuton = const Value.absent(),
                Value<List<int>> dyAuton = const Value.absent(),
                Value<bool> autonFlip = const Value.absent(),
                Value<List<int>> isCheckedTeleop = const Value.absent(),
                Value<List<int>> dxTeleop = const Value.absent(),
                Value<List<int>> dyTeleop = const Value.absent(),
                Value<bool> teleopFlip = const Value.absent(),
                required String endgameClimbLevel,
                required int elapsedTimeEndgame,
                Value<List<bool>> isCheckedSubmit = const Value.absent(),
                required String fuel,
                required String autoComments,
                required String beached,
                required String comments,
                required String driverSkill,
                required String defenseSkill,
                required String speedSkill,
                Value<int> rowid = const Value.absent(),
              }) => ScoutReportsCompanion.insert(
                username: username,
                uuid: uuid,
                matchNumber: matchNumber,
                teamNumber: teamNumber,
                flip: flip,
                RobotPosition: RobotPosition,
                MatchLevel: MatchLevel,
                dx: dx,
                dy: dy,
                elapsedTimeAuton: elapsedTimeAuton,
                autonClimb: autonClimb,
                isCheckedAuton: isCheckedAuton,
                dxAuton: dxAuton,
                dyAuton: dyAuton,
                autonFlip: autonFlip,
                isCheckedTeleop: isCheckedTeleop,
                dxTeleop: dxTeleop,
                dyTeleop: dyTeleop,
                teleopFlip: teleopFlip,
                endgameClimbLevel: endgameClimbLevel,
                elapsedTimeEndgame: elapsedTimeEndgame,
                isCheckedSubmit: isCheckedSubmit,
                fuel: fuel,
                autoComments: autoComments,
                beached: beached,
                comments: comments,
                driverSkill: driverSkill,
                defenseSkill: defenseSkill,
                speedSkill: speedSkill,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ScoutReportsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ScoutReportsTable,
      ScoutReport,
      $$ScoutReportsTableFilterComposer,
      $$ScoutReportsTableOrderingComposer,
      $$ScoutReportsTableAnnotationComposer,
      $$ScoutReportsTableCreateCompanionBuilder,
      $$ScoutReportsTableUpdateCompanionBuilder,
      (
        ScoutReport,
        BaseReferences<_$AppDatabase, $ScoutReportsTable, ScoutReport>,
      ),
      ScoutReport,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ScoutReportsTableTableManager get scoutReports =>
      $$ScoutReportsTableTableManager(_db, _db.scoutReports);
}
