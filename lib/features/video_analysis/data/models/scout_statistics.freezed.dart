// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scout_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScoutStatistics _$ScoutStatisticsFromJson(Map<String, dynamic> json) {
  return _ScoutStatistics.fromJson(json);
}

/// @nodoc
mixin _$ScoutStatistics {
  TeamStats get homeTeam => throw _privateConstructorUsedError;
  TeamStats get awayTeam => throw _privateConstructorUsedError;
  ReportSummary get reportSummary => throw _privateConstructorUsedError;

  /// Serializes this ScoutStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoutStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoutStatisticsCopyWith<ScoutStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoutStatisticsCopyWith<$Res> {
  factory $ScoutStatisticsCopyWith(
    ScoutStatistics value,
    $Res Function(ScoutStatistics) then,
  ) = _$ScoutStatisticsCopyWithImpl<$Res, ScoutStatistics>;
  @useResult
  $Res call({
    TeamStats homeTeam,
    TeamStats awayTeam,
    ReportSummary reportSummary,
  });

  $TeamStatsCopyWith<$Res> get homeTeam;
  $TeamStatsCopyWith<$Res> get awayTeam;
  $ReportSummaryCopyWith<$Res> get reportSummary;
}

/// @nodoc
class _$ScoutStatisticsCopyWithImpl<$Res, $Val extends ScoutStatistics>
    implements $ScoutStatisticsCopyWith<$Res> {
  _$ScoutStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoutStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? reportSummary = null,
  }) {
    return _then(
      _value.copyWith(
            homeTeam: null == homeTeam
                ? _value.homeTeam
                : homeTeam // ignore: cast_nullable_to_non_nullable
                      as TeamStats,
            awayTeam: null == awayTeam
                ? _value.awayTeam
                : awayTeam // ignore: cast_nullable_to_non_nullable
                      as TeamStats,
            reportSummary: null == reportSummary
                ? _value.reportSummary
                : reportSummary // ignore: cast_nullable_to_non_nullable
                      as ReportSummary,
          )
          as $Val,
    );
  }

  /// Create a copy of ScoutStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamStatsCopyWith<$Res> get homeTeam {
    return $TeamStatsCopyWith<$Res>(_value.homeTeam, (value) {
      return _then(_value.copyWith(homeTeam: value) as $Val);
    });
  }

  /// Create a copy of ScoutStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamStatsCopyWith<$Res> get awayTeam {
    return $TeamStatsCopyWith<$Res>(_value.awayTeam, (value) {
      return _then(_value.copyWith(awayTeam: value) as $Val);
    });
  }

  /// Create a copy of ScoutStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportSummaryCopyWith<$Res> get reportSummary {
    return $ReportSummaryCopyWith<$Res>(_value.reportSummary, (value) {
      return _then(_value.copyWith(reportSummary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScoutStatisticsImplCopyWith<$Res>
    implements $ScoutStatisticsCopyWith<$Res> {
  factory _$$ScoutStatisticsImplCopyWith(
    _$ScoutStatisticsImpl value,
    $Res Function(_$ScoutStatisticsImpl) then,
  ) = __$$ScoutStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    TeamStats homeTeam,
    TeamStats awayTeam,
    ReportSummary reportSummary,
  });

  @override
  $TeamStatsCopyWith<$Res> get homeTeam;
  @override
  $TeamStatsCopyWith<$Res> get awayTeam;
  @override
  $ReportSummaryCopyWith<$Res> get reportSummary;
}

/// @nodoc
class __$$ScoutStatisticsImplCopyWithImpl<$Res>
    extends _$ScoutStatisticsCopyWithImpl<$Res, _$ScoutStatisticsImpl>
    implements _$$ScoutStatisticsImplCopyWith<$Res> {
  __$$ScoutStatisticsImplCopyWithImpl(
    _$ScoutStatisticsImpl _value,
    $Res Function(_$ScoutStatisticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScoutStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeTeam = null,
    Object? awayTeam = null,
    Object? reportSummary = null,
  }) {
    return _then(
      _$ScoutStatisticsImpl(
        homeTeam: null == homeTeam
            ? _value.homeTeam
            : homeTeam // ignore: cast_nullable_to_non_nullable
                  as TeamStats,
        awayTeam: null == awayTeam
            ? _value.awayTeam
            : awayTeam // ignore: cast_nullable_to_non_nullable
                  as TeamStats,
        reportSummary: null == reportSummary
            ? _value.reportSummary
            : reportSummary // ignore: cast_nullable_to_non_nullable
                  as ReportSummary,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ScoutStatisticsImpl implements _ScoutStatistics {
  const _$ScoutStatisticsImpl({
    this.homeTeam = const TeamStats(),
    this.awayTeam = const TeamStats(),
    this.reportSummary = const ReportSummary(),
  });

  factory _$ScoutStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoutStatisticsImplFromJson(json);

  @override
  @JsonKey()
  final TeamStats homeTeam;
  @override
  @JsonKey()
  final TeamStats awayTeam;
  @override
  @JsonKey()
  final ReportSummary reportSummary;

  @override
  String toString() {
    return 'ScoutStatistics(homeTeam: $homeTeam, awayTeam: $awayTeam, reportSummary: $reportSummary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoutStatisticsImpl &&
            (identical(other.homeTeam, homeTeam) ||
                other.homeTeam == homeTeam) &&
            (identical(other.awayTeam, awayTeam) ||
                other.awayTeam == awayTeam) &&
            (identical(other.reportSummary, reportSummary) ||
                other.reportSummary == reportSummary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, homeTeam, awayTeam, reportSummary);

  /// Create a copy of ScoutStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoutStatisticsImplCopyWith<_$ScoutStatisticsImpl> get copyWith =>
      __$$ScoutStatisticsImplCopyWithImpl<_$ScoutStatisticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoutStatisticsImplToJson(this);
  }
}

abstract class _ScoutStatistics implements ScoutStatistics {
  const factory _ScoutStatistics({
    final TeamStats homeTeam,
    final TeamStats awayTeam,
    final ReportSummary reportSummary,
  }) = _$ScoutStatisticsImpl;

  factory _ScoutStatistics.fromJson(Map<String, dynamic> json) =
      _$ScoutStatisticsImpl.fromJson;

  @override
  TeamStats get homeTeam;
  @override
  TeamStats get awayTeam;
  @override
  ReportSummary get reportSummary;

  /// Create a copy of ScoutStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoutStatisticsImplCopyWith<_$ScoutStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamStats _$TeamStatsFromJson(Map<String, dynamic> json) {
  return _TeamStats.fromJson(json);
}

/// @nodoc
mixin _$TeamStats {
  String get teamName => throw _privateConstructorUsedError;
  PossessionAndBuildUp get possessionAndBuildUp =>
      throw _privateConstructorUsedError;
  OffensivePhase get offensivePhase => throw _privateConstructorUsedError;
  DefensivePhase get defensivePhase => throw _privateConstructorUsedError;
  Transitions get transitions => throw _privateConstructorUsedError;
  List<PlayerAnalysis> get playersAnalysis =>
      throw _privateConstructorUsedError;
  SpatialAnalysis get spatialAnalysis => throw _privateConstructorUsedError;
  TeamTactics get teamTactics => throw _privateConstructorUsedError;
  SetPieces get setPieces => throw _privateConstructorUsedError;
  DecisionMaking get decisionMaking => throw _privateConstructorUsedError;
  IntensityAndTempo get intensityAndTempo => throw _privateConstructorUsedError;
  AdvancedIndicators get advancedIndicators =>
      throw _privateConstructorUsedError;
  ScoutInsights get scoutInsights => throw _privateConstructorUsedError;

  /// Serializes this TeamStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamStatsCopyWith<TeamStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStatsCopyWith<$Res> {
  factory $TeamStatsCopyWith(TeamStats value, $Res Function(TeamStats) then) =
      _$TeamStatsCopyWithImpl<$Res, TeamStats>;
  @useResult
  $Res call({
    String teamName,
    PossessionAndBuildUp possessionAndBuildUp,
    OffensivePhase offensivePhase,
    DefensivePhase defensivePhase,
    Transitions transitions,
    List<PlayerAnalysis> playersAnalysis,
    SpatialAnalysis spatialAnalysis,
    TeamTactics teamTactics,
    SetPieces setPieces,
    DecisionMaking decisionMaking,
    IntensityAndTempo intensityAndTempo,
    AdvancedIndicators advancedIndicators,
    ScoutInsights scoutInsights,
  });

  $PossessionAndBuildUpCopyWith<$Res> get possessionAndBuildUp;
  $OffensivePhaseCopyWith<$Res> get offensivePhase;
  $DefensivePhaseCopyWith<$Res> get defensivePhase;
  $TransitionsCopyWith<$Res> get transitions;
  $SpatialAnalysisCopyWith<$Res> get spatialAnalysis;
  $TeamTacticsCopyWith<$Res> get teamTactics;
  $SetPiecesCopyWith<$Res> get setPieces;
  $DecisionMakingCopyWith<$Res> get decisionMaking;
  $IntensityAndTempoCopyWith<$Res> get intensityAndTempo;
  $AdvancedIndicatorsCopyWith<$Res> get advancedIndicators;
  $ScoutInsightsCopyWith<$Res> get scoutInsights;
}

/// @nodoc
class _$TeamStatsCopyWithImpl<$Res, $Val extends TeamStats>
    implements $TeamStatsCopyWith<$Res> {
  _$TeamStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamName = null,
    Object? possessionAndBuildUp = null,
    Object? offensivePhase = null,
    Object? defensivePhase = null,
    Object? transitions = null,
    Object? playersAnalysis = null,
    Object? spatialAnalysis = null,
    Object? teamTactics = null,
    Object? setPieces = null,
    Object? decisionMaking = null,
    Object? intensityAndTempo = null,
    Object? advancedIndicators = null,
    Object? scoutInsights = null,
  }) {
    return _then(
      _value.copyWith(
            teamName: null == teamName
                ? _value.teamName
                : teamName // ignore: cast_nullable_to_non_nullable
                      as String,
            possessionAndBuildUp: null == possessionAndBuildUp
                ? _value.possessionAndBuildUp
                : possessionAndBuildUp // ignore: cast_nullable_to_non_nullable
                      as PossessionAndBuildUp,
            offensivePhase: null == offensivePhase
                ? _value.offensivePhase
                : offensivePhase // ignore: cast_nullable_to_non_nullable
                      as OffensivePhase,
            defensivePhase: null == defensivePhase
                ? _value.defensivePhase
                : defensivePhase // ignore: cast_nullable_to_non_nullable
                      as DefensivePhase,
            transitions: null == transitions
                ? _value.transitions
                : transitions // ignore: cast_nullable_to_non_nullable
                      as Transitions,
            playersAnalysis: null == playersAnalysis
                ? _value.playersAnalysis
                : playersAnalysis // ignore: cast_nullable_to_non_nullable
                      as List<PlayerAnalysis>,
            spatialAnalysis: null == spatialAnalysis
                ? _value.spatialAnalysis
                : spatialAnalysis // ignore: cast_nullable_to_non_nullable
                      as SpatialAnalysis,
            teamTactics: null == teamTactics
                ? _value.teamTactics
                : teamTactics // ignore: cast_nullable_to_non_nullable
                      as TeamTactics,
            setPieces: null == setPieces
                ? _value.setPieces
                : setPieces // ignore: cast_nullable_to_non_nullable
                      as SetPieces,
            decisionMaking: null == decisionMaking
                ? _value.decisionMaking
                : decisionMaking // ignore: cast_nullable_to_non_nullable
                      as DecisionMaking,
            intensityAndTempo: null == intensityAndTempo
                ? _value.intensityAndTempo
                : intensityAndTempo // ignore: cast_nullable_to_non_nullable
                      as IntensityAndTempo,
            advancedIndicators: null == advancedIndicators
                ? _value.advancedIndicators
                : advancedIndicators // ignore: cast_nullable_to_non_nullable
                      as AdvancedIndicators,
            scoutInsights: null == scoutInsights
                ? _value.scoutInsights
                : scoutInsights // ignore: cast_nullable_to_non_nullable
                      as ScoutInsights,
          )
          as $Val,
    );
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PossessionAndBuildUpCopyWith<$Res> get possessionAndBuildUp {
    return $PossessionAndBuildUpCopyWith<$Res>(_value.possessionAndBuildUp, (
      value,
    ) {
      return _then(_value.copyWith(possessionAndBuildUp: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OffensivePhaseCopyWith<$Res> get offensivePhase {
    return $OffensivePhaseCopyWith<$Res>(_value.offensivePhase, (value) {
      return _then(_value.copyWith(offensivePhase: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DefensivePhaseCopyWith<$Res> get defensivePhase {
    return $DefensivePhaseCopyWith<$Res>(_value.defensivePhase, (value) {
      return _then(_value.copyWith(defensivePhase: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransitionsCopyWith<$Res> get transitions {
    return $TransitionsCopyWith<$Res>(_value.transitions, (value) {
      return _then(_value.copyWith(transitions: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpatialAnalysisCopyWith<$Res> get spatialAnalysis {
    return $SpatialAnalysisCopyWith<$Res>(_value.spatialAnalysis, (value) {
      return _then(_value.copyWith(spatialAnalysis: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TeamTacticsCopyWith<$Res> get teamTactics {
    return $TeamTacticsCopyWith<$Res>(_value.teamTactics, (value) {
      return _then(_value.copyWith(teamTactics: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SetPiecesCopyWith<$Res> get setPieces {
    return $SetPiecesCopyWith<$Res>(_value.setPieces, (value) {
      return _then(_value.copyWith(setPieces: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DecisionMakingCopyWith<$Res> get decisionMaking {
    return $DecisionMakingCopyWith<$Res>(_value.decisionMaking, (value) {
      return _then(_value.copyWith(decisionMaking: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IntensityAndTempoCopyWith<$Res> get intensityAndTempo {
    return $IntensityAndTempoCopyWith<$Res>(_value.intensityAndTempo, (value) {
      return _then(_value.copyWith(intensityAndTempo: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdvancedIndicatorsCopyWith<$Res> get advancedIndicators {
    return $AdvancedIndicatorsCopyWith<$Res>(_value.advancedIndicators, (
      value,
    ) {
      return _then(_value.copyWith(advancedIndicators: value) as $Val);
    });
  }

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoutInsightsCopyWith<$Res> get scoutInsights {
    return $ScoutInsightsCopyWith<$Res>(_value.scoutInsights, (value) {
      return _then(_value.copyWith(scoutInsights: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamStatsImplCopyWith<$Res>
    implements $TeamStatsCopyWith<$Res> {
  factory _$$TeamStatsImplCopyWith(
    _$TeamStatsImpl value,
    $Res Function(_$TeamStatsImpl) then,
  ) = __$$TeamStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String teamName,
    PossessionAndBuildUp possessionAndBuildUp,
    OffensivePhase offensivePhase,
    DefensivePhase defensivePhase,
    Transitions transitions,
    List<PlayerAnalysis> playersAnalysis,
    SpatialAnalysis spatialAnalysis,
    TeamTactics teamTactics,
    SetPieces setPieces,
    DecisionMaking decisionMaking,
    IntensityAndTempo intensityAndTempo,
    AdvancedIndicators advancedIndicators,
    ScoutInsights scoutInsights,
  });

  @override
  $PossessionAndBuildUpCopyWith<$Res> get possessionAndBuildUp;
  @override
  $OffensivePhaseCopyWith<$Res> get offensivePhase;
  @override
  $DefensivePhaseCopyWith<$Res> get defensivePhase;
  @override
  $TransitionsCopyWith<$Res> get transitions;
  @override
  $SpatialAnalysisCopyWith<$Res> get spatialAnalysis;
  @override
  $TeamTacticsCopyWith<$Res> get teamTactics;
  @override
  $SetPiecesCopyWith<$Res> get setPieces;
  @override
  $DecisionMakingCopyWith<$Res> get decisionMaking;
  @override
  $IntensityAndTempoCopyWith<$Res> get intensityAndTempo;
  @override
  $AdvancedIndicatorsCopyWith<$Res> get advancedIndicators;
  @override
  $ScoutInsightsCopyWith<$Res> get scoutInsights;
}

/// @nodoc
class __$$TeamStatsImplCopyWithImpl<$Res>
    extends _$TeamStatsCopyWithImpl<$Res, _$TeamStatsImpl>
    implements _$$TeamStatsImplCopyWith<$Res> {
  __$$TeamStatsImplCopyWithImpl(
    _$TeamStatsImpl _value,
    $Res Function(_$TeamStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamName = null,
    Object? possessionAndBuildUp = null,
    Object? offensivePhase = null,
    Object? defensivePhase = null,
    Object? transitions = null,
    Object? playersAnalysis = null,
    Object? spatialAnalysis = null,
    Object? teamTactics = null,
    Object? setPieces = null,
    Object? decisionMaking = null,
    Object? intensityAndTempo = null,
    Object? advancedIndicators = null,
    Object? scoutInsights = null,
  }) {
    return _then(
      _$TeamStatsImpl(
        teamName: null == teamName
            ? _value.teamName
            : teamName // ignore: cast_nullable_to_non_nullable
                  as String,
        possessionAndBuildUp: null == possessionAndBuildUp
            ? _value.possessionAndBuildUp
            : possessionAndBuildUp // ignore: cast_nullable_to_non_nullable
                  as PossessionAndBuildUp,
        offensivePhase: null == offensivePhase
            ? _value.offensivePhase
            : offensivePhase // ignore: cast_nullable_to_non_nullable
                  as OffensivePhase,
        defensivePhase: null == defensivePhase
            ? _value.defensivePhase
            : defensivePhase // ignore: cast_nullable_to_non_nullable
                  as DefensivePhase,
        transitions: null == transitions
            ? _value.transitions
            : transitions // ignore: cast_nullable_to_non_nullable
                  as Transitions,
        playersAnalysis: null == playersAnalysis
            ? _value._playersAnalysis
            : playersAnalysis // ignore: cast_nullable_to_non_nullable
                  as List<PlayerAnalysis>,
        spatialAnalysis: null == spatialAnalysis
            ? _value.spatialAnalysis
            : spatialAnalysis // ignore: cast_nullable_to_non_nullable
                  as SpatialAnalysis,
        teamTactics: null == teamTactics
            ? _value.teamTactics
            : teamTactics // ignore: cast_nullable_to_non_nullable
                  as TeamTactics,
        setPieces: null == setPieces
            ? _value.setPieces
            : setPieces // ignore: cast_nullable_to_non_nullable
                  as SetPieces,
        decisionMaking: null == decisionMaking
            ? _value.decisionMaking
            : decisionMaking // ignore: cast_nullable_to_non_nullable
                  as DecisionMaking,
        intensityAndTempo: null == intensityAndTempo
            ? _value.intensityAndTempo
            : intensityAndTempo // ignore: cast_nullable_to_non_nullable
                  as IntensityAndTempo,
        advancedIndicators: null == advancedIndicators
            ? _value.advancedIndicators
            : advancedIndicators // ignore: cast_nullable_to_non_nullable
                  as AdvancedIndicators,
        scoutInsights: null == scoutInsights
            ? _value.scoutInsights
            : scoutInsights // ignore: cast_nullable_to_non_nullable
                  as ScoutInsights,
      ),
    );
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TeamStatsImpl implements _TeamStats {
  const _$TeamStatsImpl({
    this.teamName = '',
    this.possessionAndBuildUp = const PossessionAndBuildUp(),
    this.offensivePhase = const OffensivePhase(),
    this.defensivePhase = const DefensivePhase(),
    this.transitions = const Transitions(),
    final List<PlayerAnalysis> playersAnalysis = const [],
    this.spatialAnalysis = const SpatialAnalysis(),
    this.teamTactics = const TeamTactics(),
    this.setPieces = const SetPieces(),
    this.decisionMaking = const DecisionMaking(),
    this.intensityAndTempo = const IntensityAndTempo(),
    this.advancedIndicators = const AdvancedIndicators(),
    this.scoutInsights = const ScoutInsights(),
  }) : _playersAnalysis = playersAnalysis;

  factory _$TeamStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamStatsImplFromJson(json);

  @override
  @JsonKey()
  final String teamName;
  @override
  @JsonKey()
  final PossessionAndBuildUp possessionAndBuildUp;
  @override
  @JsonKey()
  final OffensivePhase offensivePhase;
  @override
  @JsonKey()
  final DefensivePhase defensivePhase;
  @override
  @JsonKey()
  final Transitions transitions;
  final List<PlayerAnalysis> _playersAnalysis;
  @override
  @JsonKey()
  List<PlayerAnalysis> get playersAnalysis {
    if (_playersAnalysis is EqualUnmodifiableListView) return _playersAnalysis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playersAnalysis);
  }

  @override
  @JsonKey()
  final SpatialAnalysis spatialAnalysis;
  @override
  @JsonKey()
  final TeamTactics teamTactics;
  @override
  @JsonKey()
  final SetPieces setPieces;
  @override
  @JsonKey()
  final DecisionMaking decisionMaking;
  @override
  @JsonKey()
  final IntensityAndTempo intensityAndTempo;
  @override
  @JsonKey()
  final AdvancedIndicators advancedIndicators;
  @override
  @JsonKey()
  final ScoutInsights scoutInsights;

  @override
  String toString() {
    return 'TeamStats(teamName: $teamName, possessionAndBuildUp: $possessionAndBuildUp, offensivePhase: $offensivePhase, defensivePhase: $defensivePhase, transitions: $transitions, playersAnalysis: $playersAnalysis, spatialAnalysis: $spatialAnalysis, teamTactics: $teamTactics, setPieces: $setPieces, decisionMaking: $decisionMaking, intensityAndTempo: $intensityAndTempo, advancedIndicators: $advancedIndicators, scoutInsights: $scoutInsights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamStatsImpl &&
            (identical(other.teamName, teamName) ||
                other.teamName == teamName) &&
            (identical(other.possessionAndBuildUp, possessionAndBuildUp) ||
                other.possessionAndBuildUp == possessionAndBuildUp) &&
            (identical(other.offensivePhase, offensivePhase) ||
                other.offensivePhase == offensivePhase) &&
            (identical(other.defensivePhase, defensivePhase) ||
                other.defensivePhase == defensivePhase) &&
            (identical(other.transitions, transitions) ||
                other.transitions == transitions) &&
            const DeepCollectionEquality().equals(
              other._playersAnalysis,
              _playersAnalysis,
            ) &&
            (identical(other.spatialAnalysis, spatialAnalysis) ||
                other.spatialAnalysis == spatialAnalysis) &&
            (identical(other.teamTactics, teamTactics) ||
                other.teamTactics == teamTactics) &&
            (identical(other.setPieces, setPieces) ||
                other.setPieces == setPieces) &&
            (identical(other.decisionMaking, decisionMaking) ||
                other.decisionMaking == decisionMaking) &&
            (identical(other.intensityAndTempo, intensityAndTempo) ||
                other.intensityAndTempo == intensityAndTempo) &&
            (identical(other.advancedIndicators, advancedIndicators) ||
                other.advancedIndicators == advancedIndicators) &&
            (identical(other.scoutInsights, scoutInsights) ||
                other.scoutInsights == scoutInsights));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    teamName,
    possessionAndBuildUp,
    offensivePhase,
    defensivePhase,
    transitions,
    const DeepCollectionEquality().hash(_playersAnalysis),
    spatialAnalysis,
    teamTactics,
    setPieces,
    decisionMaking,
    intensityAndTempo,
    advancedIndicators,
    scoutInsights,
  );

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamStatsImplCopyWith<_$TeamStatsImpl> get copyWith =>
      __$$TeamStatsImplCopyWithImpl<_$TeamStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamStatsImplToJson(this);
  }
}

abstract class _TeamStats implements TeamStats {
  const factory _TeamStats({
    final String teamName,
    final PossessionAndBuildUp possessionAndBuildUp,
    final OffensivePhase offensivePhase,
    final DefensivePhase defensivePhase,
    final Transitions transitions,
    final List<PlayerAnalysis> playersAnalysis,
    final SpatialAnalysis spatialAnalysis,
    final TeamTactics teamTactics,
    final SetPieces setPieces,
    final DecisionMaking decisionMaking,
    final IntensityAndTempo intensityAndTempo,
    final AdvancedIndicators advancedIndicators,
    final ScoutInsights scoutInsights,
  }) = _$TeamStatsImpl;

  factory _TeamStats.fromJson(Map<String, dynamic> json) =
      _$TeamStatsImpl.fromJson;

  @override
  String get teamName;
  @override
  PossessionAndBuildUp get possessionAndBuildUp;
  @override
  OffensivePhase get offensivePhase;
  @override
  DefensivePhase get defensivePhase;
  @override
  Transitions get transitions;
  @override
  List<PlayerAnalysis> get playersAnalysis;
  @override
  SpatialAnalysis get spatialAnalysis;
  @override
  TeamTactics get teamTactics;
  @override
  SetPieces get setPieces;
  @override
  DecisionMaking get decisionMaking;
  @override
  IntensityAndTempo get intensityAndTempo;
  @override
  AdvancedIndicators get advancedIndicators;
  @override
  ScoutInsights get scoutInsights;

  /// Create a copy of TeamStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamStatsImplCopyWith<_$TeamStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PossessionAndBuildUp _$PossessionAndBuildUpFromJson(Map<String, dynamic> json) {
  return _PossessionAndBuildUp.fromJson(json);
}

/// @nodoc
mixin _$PossessionAndBuildUp {
  int get totalPossessionPercent => throw _privateConstructorUsedError;
  PossessionByZone get possessionByZone => throw _privateConstructorUsedError;
  double get averagePossessionTimeSeconds => throw _privateConstructorUsedError;
  int get totalPossessions => throw _privateConstructorUsedError;
  double get averagePassesPerPossession => throw _privateConstructorUsedError;
  PossessionsType get possessionsType => throw _privateConstructorUsedError;
  Passes get passes => throw _privateConstructorUsedError;
  Progression get progression => throw _privateConstructorUsedError;

  /// Serializes this PossessionAndBuildUp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PossessionAndBuildUp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PossessionAndBuildUpCopyWith<PossessionAndBuildUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PossessionAndBuildUpCopyWith<$Res> {
  factory $PossessionAndBuildUpCopyWith(
    PossessionAndBuildUp value,
    $Res Function(PossessionAndBuildUp) then,
  ) = _$PossessionAndBuildUpCopyWithImpl<$Res, PossessionAndBuildUp>;
  @useResult
  $Res call({
    int totalPossessionPercent,
    PossessionByZone possessionByZone,
    double averagePossessionTimeSeconds,
    int totalPossessions,
    double averagePassesPerPossession,
    PossessionsType possessionsType,
    Passes passes,
    Progression progression,
  });

  $PossessionByZoneCopyWith<$Res> get possessionByZone;
  $PossessionsTypeCopyWith<$Res> get possessionsType;
  $PassesCopyWith<$Res> get passes;
  $ProgressionCopyWith<$Res> get progression;
}

/// @nodoc
class _$PossessionAndBuildUpCopyWithImpl<
  $Res,
  $Val extends PossessionAndBuildUp
>
    implements $PossessionAndBuildUpCopyWith<$Res> {
  _$PossessionAndBuildUpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PossessionAndBuildUp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPossessionPercent = null,
    Object? possessionByZone = null,
    Object? averagePossessionTimeSeconds = null,
    Object? totalPossessions = null,
    Object? averagePassesPerPossession = null,
    Object? possessionsType = null,
    Object? passes = null,
    Object? progression = null,
  }) {
    return _then(
      _value.copyWith(
            totalPossessionPercent: null == totalPossessionPercent
                ? _value.totalPossessionPercent
                : totalPossessionPercent // ignore: cast_nullable_to_non_nullable
                      as int,
            possessionByZone: null == possessionByZone
                ? _value.possessionByZone
                : possessionByZone // ignore: cast_nullable_to_non_nullable
                      as PossessionByZone,
            averagePossessionTimeSeconds: null == averagePossessionTimeSeconds
                ? _value.averagePossessionTimeSeconds
                : averagePossessionTimeSeconds // ignore: cast_nullable_to_non_nullable
                      as double,
            totalPossessions: null == totalPossessions
                ? _value.totalPossessions
                : totalPossessions // ignore: cast_nullable_to_non_nullable
                      as int,
            averagePassesPerPossession: null == averagePassesPerPossession
                ? _value.averagePassesPerPossession
                : averagePassesPerPossession // ignore: cast_nullable_to_non_nullable
                      as double,
            possessionsType: null == possessionsType
                ? _value.possessionsType
                : possessionsType // ignore: cast_nullable_to_non_nullable
                      as PossessionsType,
            passes: null == passes
                ? _value.passes
                : passes // ignore: cast_nullable_to_non_nullable
                      as Passes,
            progression: null == progression
                ? _value.progression
                : progression // ignore: cast_nullable_to_non_nullable
                      as Progression,
          )
          as $Val,
    );
  }

  /// Create a copy of PossessionAndBuildUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PossessionByZoneCopyWith<$Res> get possessionByZone {
    return $PossessionByZoneCopyWith<$Res>(_value.possessionByZone, (value) {
      return _then(_value.copyWith(possessionByZone: value) as $Val);
    });
  }

  /// Create a copy of PossessionAndBuildUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PossessionsTypeCopyWith<$Res> get possessionsType {
    return $PossessionsTypeCopyWith<$Res>(_value.possessionsType, (value) {
      return _then(_value.copyWith(possessionsType: value) as $Val);
    });
  }

  /// Create a copy of PossessionAndBuildUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassesCopyWith<$Res> get passes {
    return $PassesCopyWith<$Res>(_value.passes, (value) {
      return _then(_value.copyWith(passes: value) as $Val);
    });
  }

  /// Create a copy of PossessionAndBuildUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgressionCopyWith<$Res> get progression {
    return $ProgressionCopyWith<$Res>(_value.progression, (value) {
      return _then(_value.copyWith(progression: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PossessionAndBuildUpImplCopyWith<$Res>
    implements $PossessionAndBuildUpCopyWith<$Res> {
  factory _$$PossessionAndBuildUpImplCopyWith(
    _$PossessionAndBuildUpImpl value,
    $Res Function(_$PossessionAndBuildUpImpl) then,
  ) = __$$PossessionAndBuildUpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalPossessionPercent,
    PossessionByZone possessionByZone,
    double averagePossessionTimeSeconds,
    int totalPossessions,
    double averagePassesPerPossession,
    PossessionsType possessionsType,
    Passes passes,
    Progression progression,
  });

  @override
  $PossessionByZoneCopyWith<$Res> get possessionByZone;
  @override
  $PossessionsTypeCopyWith<$Res> get possessionsType;
  @override
  $PassesCopyWith<$Res> get passes;
  @override
  $ProgressionCopyWith<$Res> get progression;
}

/// @nodoc
class __$$PossessionAndBuildUpImplCopyWithImpl<$Res>
    extends _$PossessionAndBuildUpCopyWithImpl<$Res, _$PossessionAndBuildUpImpl>
    implements _$$PossessionAndBuildUpImplCopyWith<$Res> {
  __$$PossessionAndBuildUpImplCopyWithImpl(
    _$PossessionAndBuildUpImpl _value,
    $Res Function(_$PossessionAndBuildUpImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PossessionAndBuildUp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPossessionPercent = null,
    Object? possessionByZone = null,
    Object? averagePossessionTimeSeconds = null,
    Object? totalPossessions = null,
    Object? averagePassesPerPossession = null,
    Object? possessionsType = null,
    Object? passes = null,
    Object? progression = null,
  }) {
    return _then(
      _$PossessionAndBuildUpImpl(
        totalPossessionPercent: null == totalPossessionPercent
            ? _value.totalPossessionPercent
            : totalPossessionPercent // ignore: cast_nullable_to_non_nullable
                  as int,
        possessionByZone: null == possessionByZone
            ? _value.possessionByZone
            : possessionByZone // ignore: cast_nullable_to_non_nullable
                  as PossessionByZone,
        averagePossessionTimeSeconds: null == averagePossessionTimeSeconds
            ? _value.averagePossessionTimeSeconds
            : averagePossessionTimeSeconds // ignore: cast_nullable_to_non_nullable
                  as double,
        totalPossessions: null == totalPossessions
            ? _value.totalPossessions
            : totalPossessions // ignore: cast_nullable_to_non_nullable
                  as int,
        averagePassesPerPossession: null == averagePassesPerPossession
            ? _value.averagePassesPerPossession
            : averagePassesPerPossession // ignore: cast_nullable_to_non_nullable
                  as double,
        possessionsType: null == possessionsType
            ? _value.possessionsType
            : possessionsType // ignore: cast_nullable_to_non_nullable
                  as PossessionsType,
        passes: null == passes
            ? _value.passes
            : passes // ignore: cast_nullable_to_non_nullable
                  as Passes,
        progression: null == progression
            ? _value.progression
            : progression // ignore: cast_nullable_to_non_nullable
                  as Progression,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PossessionAndBuildUpImpl implements _PossessionAndBuildUp {
  const _$PossessionAndBuildUpImpl({
    this.totalPossessionPercent = 50,
    this.possessionByZone = const PossessionByZone(),
    this.averagePossessionTimeSeconds = 0.0,
    this.totalPossessions = 0,
    this.averagePassesPerPossession = 0.0,
    this.possessionsType = const PossessionsType(),
    this.passes = const Passes(),
    this.progression = const Progression(),
  });

  factory _$PossessionAndBuildUpImpl.fromJson(Map<String, dynamic> json) =>
      _$$PossessionAndBuildUpImplFromJson(json);

  @override
  @JsonKey()
  final int totalPossessionPercent;
  @override
  @JsonKey()
  final PossessionByZone possessionByZone;
  @override
  @JsonKey()
  final double averagePossessionTimeSeconds;
  @override
  @JsonKey()
  final int totalPossessions;
  @override
  @JsonKey()
  final double averagePassesPerPossession;
  @override
  @JsonKey()
  final PossessionsType possessionsType;
  @override
  @JsonKey()
  final Passes passes;
  @override
  @JsonKey()
  final Progression progression;

  @override
  String toString() {
    return 'PossessionAndBuildUp(totalPossessionPercent: $totalPossessionPercent, possessionByZone: $possessionByZone, averagePossessionTimeSeconds: $averagePossessionTimeSeconds, totalPossessions: $totalPossessions, averagePassesPerPossession: $averagePassesPerPossession, possessionsType: $possessionsType, passes: $passes, progression: $progression)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PossessionAndBuildUpImpl &&
            (identical(other.totalPossessionPercent, totalPossessionPercent) ||
                other.totalPossessionPercent == totalPossessionPercent) &&
            (identical(other.possessionByZone, possessionByZone) ||
                other.possessionByZone == possessionByZone) &&
            (identical(
                  other.averagePossessionTimeSeconds,
                  averagePossessionTimeSeconds,
                ) ||
                other.averagePossessionTimeSeconds ==
                    averagePossessionTimeSeconds) &&
            (identical(other.totalPossessions, totalPossessions) ||
                other.totalPossessions == totalPossessions) &&
            (identical(
                  other.averagePassesPerPossession,
                  averagePassesPerPossession,
                ) ||
                other.averagePassesPerPossession ==
                    averagePassesPerPossession) &&
            (identical(other.possessionsType, possessionsType) ||
                other.possessionsType == possessionsType) &&
            (identical(other.passes, passes) || other.passes == passes) &&
            (identical(other.progression, progression) ||
                other.progression == progression));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalPossessionPercent,
    possessionByZone,
    averagePossessionTimeSeconds,
    totalPossessions,
    averagePassesPerPossession,
    possessionsType,
    passes,
    progression,
  );

  /// Create a copy of PossessionAndBuildUp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PossessionAndBuildUpImplCopyWith<_$PossessionAndBuildUpImpl>
  get copyWith =>
      __$$PossessionAndBuildUpImplCopyWithImpl<_$PossessionAndBuildUpImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PossessionAndBuildUpImplToJson(this);
  }
}

abstract class _PossessionAndBuildUp implements PossessionAndBuildUp {
  const factory _PossessionAndBuildUp({
    final int totalPossessionPercent,
    final PossessionByZone possessionByZone,
    final double averagePossessionTimeSeconds,
    final int totalPossessions,
    final double averagePassesPerPossession,
    final PossessionsType possessionsType,
    final Passes passes,
    final Progression progression,
  }) = _$PossessionAndBuildUpImpl;

  factory _PossessionAndBuildUp.fromJson(Map<String, dynamic> json) =
      _$PossessionAndBuildUpImpl.fromJson;

  @override
  int get totalPossessionPercent;
  @override
  PossessionByZone get possessionByZone;
  @override
  double get averagePossessionTimeSeconds;
  @override
  int get totalPossessions;
  @override
  double get averagePassesPerPossession;
  @override
  PossessionsType get possessionsType;
  @override
  Passes get passes;
  @override
  Progression get progression;

  /// Create a copy of PossessionAndBuildUp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PossessionAndBuildUpImplCopyWith<_$PossessionAndBuildUpImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PossessionByZone _$PossessionByZoneFromJson(Map<String, dynamic> json) {
  return _PossessionByZone.fromJson(json);
}

/// @nodoc
mixin _$PossessionByZone {
  int get defense => throw _privateConstructorUsedError;
  int get midfield => throw _privateConstructorUsedError;
  int get attack => throw _privateConstructorUsedError;

  /// Serializes this PossessionByZone to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PossessionByZone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PossessionByZoneCopyWith<PossessionByZone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PossessionByZoneCopyWith<$Res> {
  factory $PossessionByZoneCopyWith(
    PossessionByZone value,
    $Res Function(PossessionByZone) then,
  ) = _$PossessionByZoneCopyWithImpl<$Res, PossessionByZone>;
  @useResult
  $Res call({int defense, int midfield, int attack});
}

/// @nodoc
class _$PossessionByZoneCopyWithImpl<$Res, $Val extends PossessionByZone>
    implements $PossessionByZoneCopyWith<$Res> {
  _$PossessionByZoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PossessionByZone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defense = null,
    Object? midfield = null,
    Object? attack = null,
  }) {
    return _then(
      _value.copyWith(
            defense: null == defense
                ? _value.defense
                : defense // ignore: cast_nullable_to_non_nullable
                      as int,
            midfield: null == midfield
                ? _value.midfield
                : midfield // ignore: cast_nullable_to_non_nullable
                      as int,
            attack: null == attack
                ? _value.attack
                : attack // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PossessionByZoneImplCopyWith<$Res>
    implements $PossessionByZoneCopyWith<$Res> {
  factory _$$PossessionByZoneImplCopyWith(
    _$PossessionByZoneImpl value,
    $Res Function(_$PossessionByZoneImpl) then,
  ) = __$$PossessionByZoneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int defense, int midfield, int attack});
}

/// @nodoc
class __$$PossessionByZoneImplCopyWithImpl<$Res>
    extends _$PossessionByZoneCopyWithImpl<$Res, _$PossessionByZoneImpl>
    implements _$$PossessionByZoneImplCopyWith<$Res> {
  __$$PossessionByZoneImplCopyWithImpl(
    _$PossessionByZoneImpl _value,
    $Res Function(_$PossessionByZoneImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PossessionByZone
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defense = null,
    Object? midfield = null,
    Object? attack = null,
  }) {
    return _then(
      _$PossessionByZoneImpl(
        defense: null == defense
            ? _value.defense
            : defense // ignore: cast_nullable_to_non_nullable
                  as int,
        midfield: null == midfield
            ? _value.midfield
            : midfield // ignore: cast_nullable_to_non_nullable
                  as int,
        attack: null == attack
            ? _value.attack
            : attack // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PossessionByZoneImpl implements _PossessionByZone {
  const _$PossessionByZoneImpl({
    this.defense = 0,
    this.midfield = 0,
    this.attack = 0,
  });

  factory _$PossessionByZoneImpl.fromJson(Map<String, dynamic> json) =>
      _$$PossessionByZoneImplFromJson(json);

  @override
  @JsonKey()
  final int defense;
  @override
  @JsonKey()
  final int midfield;
  @override
  @JsonKey()
  final int attack;

  @override
  String toString() {
    return 'PossessionByZone(defense: $defense, midfield: $midfield, attack: $attack)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PossessionByZoneImpl &&
            (identical(other.defense, defense) || other.defense == defense) &&
            (identical(other.midfield, midfield) ||
                other.midfield == midfield) &&
            (identical(other.attack, attack) || other.attack == attack));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, defense, midfield, attack);

  /// Create a copy of PossessionByZone
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PossessionByZoneImplCopyWith<_$PossessionByZoneImpl> get copyWith =>
      __$$PossessionByZoneImplCopyWithImpl<_$PossessionByZoneImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PossessionByZoneImplToJson(this);
  }
}

abstract class _PossessionByZone implements PossessionByZone {
  const factory _PossessionByZone({
    final int defense,
    final int midfield,
    final int attack,
  }) = _$PossessionByZoneImpl;

  factory _PossessionByZone.fromJson(Map<String, dynamic> json) =
      _$PossessionByZoneImpl.fromJson;

  @override
  int get defense;
  @override
  int get midfield;
  @override
  int get attack;

  /// Create a copy of PossessionByZone
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PossessionByZoneImplCopyWith<_$PossessionByZoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PossessionsType _$PossessionsTypeFromJson(Map<String, dynamic> json) {
  return _PossessionsType.fromJson(json);
}

/// @nodoc
mixin _$PossessionsType {
  int get sterile => throw _privateConstructorUsedError;
  int get productive => throw _privateConstructorUsedError;

  /// Serializes this PossessionsType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PossessionsType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PossessionsTypeCopyWith<PossessionsType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PossessionsTypeCopyWith<$Res> {
  factory $PossessionsTypeCopyWith(
    PossessionsType value,
    $Res Function(PossessionsType) then,
  ) = _$PossessionsTypeCopyWithImpl<$Res, PossessionsType>;
  @useResult
  $Res call({int sterile, int productive});
}

/// @nodoc
class _$PossessionsTypeCopyWithImpl<$Res, $Val extends PossessionsType>
    implements $PossessionsTypeCopyWith<$Res> {
  _$PossessionsTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PossessionsType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sterile = null, Object? productive = null}) {
    return _then(
      _value.copyWith(
            sterile: null == sterile
                ? _value.sterile
                : sterile // ignore: cast_nullable_to_non_nullable
                      as int,
            productive: null == productive
                ? _value.productive
                : productive // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PossessionsTypeImplCopyWith<$Res>
    implements $PossessionsTypeCopyWith<$Res> {
  factory _$$PossessionsTypeImplCopyWith(
    _$PossessionsTypeImpl value,
    $Res Function(_$PossessionsTypeImpl) then,
  ) = __$$PossessionsTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int sterile, int productive});
}

/// @nodoc
class __$$PossessionsTypeImplCopyWithImpl<$Res>
    extends _$PossessionsTypeCopyWithImpl<$Res, _$PossessionsTypeImpl>
    implements _$$PossessionsTypeImplCopyWith<$Res> {
  __$$PossessionsTypeImplCopyWithImpl(
    _$PossessionsTypeImpl _value,
    $Res Function(_$PossessionsTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PossessionsType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sterile = null, Object? productive = null}) {
    return _then(
      _$PossessionsTypeImpl(
        sterile: null == sterile
            ? _value.sterile
            : sterile // ignore: cast_nullable_to_non_nullable
                  as int,
        productive: null == productive
            ? _value.productive
            : productive // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PossessionsTypeImpl implements _PossessionsType {
  const _$PossessionsTypeImpl({this.sterile = 0, this.productive = 0});

  factory _$PossessionsTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PossessionsTypeImplFromJson(json);

  @override
  @JsonKey()
  final int sterile;
  @override
  @JsonKey()
  final int productive;

  @override
  String toString() {
    return 'PossessionsType(sterile: $sterile, productive: $productive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PossessionsTypeImpl &&
            (identical(other.sterile, sterile) || other.sterile == sterile) &&
            (identical(other.productive, productive) ||
                other.productive == productive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sterile, productive);

  /// Create a copy of PossessionsType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PossessionsTypeImplCopyWith<_$PossessionsTypeImpl> get copyWith =>
      __$$PossessionsTypeImplCopyWithImpl<_$PossessionsTypeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PossessionsTypeImplToJson(this);
  }
}

abstract class _PossessionsType implements PossessionsType {
  const factory _PossessionsType({final int sterile, final int productive}) =
      _$PossessionsTypeImpl;

  factory _PossessionsType.fromJson(Map<String, dynamic> json) =
      _$PossessionsTypeImpl.fromJson;

  @override
  int get sterile;
  @override
  int get productive;

  /// Create a copy of PossessionsType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PossessionsTypeImplCopyWith<_$PossessionsTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Passes _$PassesFromJson(Map<String, dynamic> json) {
  return _Passes.fromJson(json);
}

/// @nodoc
mixin _$Passes {
  int get total => throw _privateConstructorUsedError;
  int get accuracyPercent => throw _privateConstructorUsedError;
  PassDirection get direction => throw _privateConstructorUsedError;
  int get betweenLines => throw _privateConstructorUsedError;
  int get keyPasses => throw _privateConstructorUsedError;
  int get underPressure => throw _privateConstructorUsedError;
  int get oneTouch => throw _privateConstructorUsedError;
  int get twoPlusTouches => throw _privateConstructorUsedError;
  int get longSequences => throw _privateConstructorUsedError;

  /// Serializes this Passes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Passes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassesCopyWith<Passes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassesCopyWith<$Res> {
  factory $PassesCopyWith(Passes value, $Res Function(Passes) then) =
      _$PassesCopyWithImpl<$Res, Passes>;
  @useResult
  $Res call({
    int total,
    int accuracyPercent,
    PassDirection direction,
    int betweenLines,
    int keyPasses,
    int underPressure,
    int oneTouch,
    int twoPlusTouches,
    int longSequences,
  });

  $PassDirectionCopyWith<$Res> get direction;
}

/// @nodoc
class _$PassesCopyWithImpl<$Res, $Val extends Passes>
    implements $PassesCopyWith<$Res> {
  _$PassesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Passes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? accuracyPercent = null,
    Object? direction = null,
    Object? betweenLines = null,
    Object? keyPasses = null,
    Object? underPressure = null,
    Object? oneTouch = null,
    Object? twoPlusTouches = null,
    Object? longSequences = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            accuracyPercent: null == accuracyPercent
                ? _value.accuracyPercent
                : accuracyPercent // ignore: cast_nullable_to_non_nullable
                      as int,
            direction: null == direction
                ? _value.direction
                : direction // ignore: cast_nullable_to_non_nullable
                      as PassDirection,
            betweenLines: null == betweenLines
                ? _value.betweenLines
                : betweenLines // ignore: cast_nullable_to_non_nullable
                      as int,
            keyPasses: null == keyPasses
                ? _value.keyPasses
                : keyPasses // ignore: cast_nullable_to_non_nullable
                      as int,
            underPressure: null == underPressure
                ? _value.underPressure
                : underPressure // ignore: cast_nullable_to_non_nullable
                      as int,
            oneTouch: null == oneTouch
                ? _value.oneTouch
                : oneTouch // ignore: cast_nullable_to_non_nullable
                      as int,
            twoPlusTouches: null == twoPlusTouches
                ? _value.twoPlusTouches
                : twoPlusTouches // ignore: cast_nullable_to_non_nullable
                      as int,
            longSequences: null == longSequences
                ? _value.longSequences
                : longSequences // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of Passes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassDirectionCopyWith<$Res> get direction {
    return $PassDirectionCopyWith<$Res>(_value.direction, (value) {
      return _then(_value.copyWith(direction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PassesImplCopyWith<$Res> implements $PassesCopyWith<$Res> {
  factory _$$PassesImplCopyWith(
    _$PassesImpl value,
    $Res Function(_$PassesImpl) then,
  ) = __$$PassesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int accuracyPercent,
    PassDirection direction,
    int betweenLines,
    int keyPasses,
    int underPressure,
    int oneTouch,
    int twoPlusTouches,
    int longSequences,
  });

  @override
  $PassDirectionCopyWith<$Res> get direction;
}

/// @nodoc
class __$$PassesImplCopyWithImpl<$Res>
    extends _$PassesCopyWithImpl<$Res, _$PassesImpl>
    implements _$$PassesImplCopyWith<$Res> {
  __$$PassesImplCopyWithImpl(
    _$PassesImpl _value,
    $Res Function(_$PassesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Passes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? accuracyPercent = null,
    Object? direction = null,
    Object? betweenLines = null,
    Object? keyPasses = null,
    Object? underPressure = null,
    Object? oneTouch = null,
    Object? twoPlusTouches = null,
    Object? longSequences = null,
  }) {
    return _then(
      _$PassesImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        accuracyPercent: null == accuracyPercent
            ? _value.accuracyPercent
            : accuracyPercent // ignore: cast_nullable_to_non_nullable
                  as int,
        direction: null == direction
            ? _value.direction
            : direction // ignore: cast_nullable_to_non_nullable
                  as PassDirection,
        betweenLines: null == betweenLines
            ? _value.betweenLines
            : betweenLines // ignore: cast_nullable_to_non_nullable
                  as int,
        keyPasses: null == keyPasses
            ? _value.keyPasses
            : keyPasses // ignore: cast_nullable_to_non_nullable
                  as int,
        underPressure: null == underPressure
            ? _value.underPressure
            : underPressure // ignore: cast_nullable_to_non_nullable
                  as int,
        oneTouch: null == oneTouch
            ? _value.oneTouch
            : oneTouch // ignore: cast_nullable_to_non_nullable
                  as int,
        twoPlusTouches: null == twoPlusTouches
            ? _value.twoPlusTouches
            : twoPlusTouches // ignore: cast_nullable_to_non_nullable
                  as int,
        longSequences: null == longSequences
            ? _value.longSequences
            : longSequences // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PassesImpl implements _Passes {
  const _$PassesImpl({
    this.total = 0,
    this.accuracyPercent = 0,
    this.direction = const PassDirection(),
    this.betweenLines = 0,
    this.keyPasses = 0,
    this.underPressure = 0,
    this.oneTouch = 0,
    this.twoPlusTouches = 0,
    this.longSequences = 0,
  });

  factory _$PassesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassesImplFromJson(json);

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int accuracyPercent;
  @override
  @JsonKey()
  final PassDirection direction;
  @override
  @JsonKey()
  final int betweenLines;
  @override
  @JsonKey()
  final int keyPasses;
  @override
  @JsonKey()
  final int underPressure;
  @override
  @JsonKey()
  final int oneTouch;
  @override
  @JsonKey()
  final int twoPlusTouches;
  @override
  @JsonKey()
  final int longSequences;

  @override
  String toString() {
    return 'Passes(total: $total, accuracyPercent: $accuracyPercent, direction: $direction, betweenLines: $betweenLines, keyPasses: $keyPasses, underPressure: $underPressure, oneTouch: $oneTouch, twoPlusTouches: $twoPlusTouches, longSequences: $longSequences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassesImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.accuracyPercent, accuracyPercent) ||
                other.accuracyPercent == accuracyPercent) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.betweenLines, betweenLines) ||
                other.betweenLines == betweenLines) &&
            (identical(other.keyPasses, keyPasses) ||
                other.keyPasses == keyPasses) &&
            (identical(other.underPressure, underPressure) ||
                other.underPressure == underPressure) &&
            (identical(other.oneTouch, oneTouch) ||
                other.oneTouch == oneTouch) &&
            (identical(other.twoPlusTouches, twoPlusTouches) ||
                other.twoPlusTouches == twoPlusTouches) &&
            (identical(other.longSequences, longSequences) ||
                other.longSequences == longSequences));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    accuracyPercent,
    direction,
    betweenLines,
    keyPasses,
    underPressure,
    oneTouch,
    twoPlusTouches,
    longSequences,
  );

  /// Create a copy of Passes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassesImplCopyWith<_$PassesImpl> get copyWith =>
      __$$PassesImplCopyWithImpl<_$PassesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassesImplToJson(this);
  }
}

abstract class _Passes implements Passes {
  const factory _Passes({
    final int total,
    final int accuracyPercent,
    final PassDirection direction,
    final int betweenLines,
    final int keyPasses,
    final int underPressure,
    final int oneTouch,
    final int twoPlusTouches,
    final int longSequences,
  }) = _$PassesImpl;

  factory _Passes.fromJson(Map<String, dynamic> json) = _$PassesImpl.fromJson;

  @override
  int get total;
  @override
  int get accuracyPercent;
  @override
  PassDirection get direction;
  @override
  int get betweenLines;
  @override
  int get keyPasses;
  @override
  int get underPressure;
  @override
  int get oneTouch;
  @override
  int get twoPlusTouches;
  @override
  int get longSequences;

  /// Create a copy of Passes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassesImplCopyWith<_$PassesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PassDirection _$PassDirectionFromJson(Map<String, dynamic> json) {
  return _PassDirection.fromJson(json);
}

/// @nodoc
mixin _$PassDirection {
  int get forward => throw _privateConstructorUsedError;
  int get lateral => throw _privateConstructorUsedError;
  int get backward => throw _privateConstructorUsedError;

  /// Serializes this PassDirection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PassDirection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassDirectionCopyWith<PassDirection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassDirectionCopyWith<$Res> {
  factory $PassDirectionCopyWith(
    PassDirection value,
    $Res Function(PassDirection) then,
  ) = _$PassDirectionCopyWithImpl<$Res, PassDirection>;
  @useResult
  $Res call({int forward, int lateral, int backward});
}

/// @nodoc
class _$PassDirectionCopyWithImpl<$Res, $Val extends PassDirection>
    implements $PassDirectionCopyWith<$Res> {
  _$PassDirectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassDirection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forward = null,
    Object? lateral = null,
    Object? backward = null,
  }) {
    return _then(
      _value.copyWith(
            forward: null == forward
                ? _value.forward
                : forward // ignore: cast_nullable_to_non_nullable
                      as int,
            lateral: null == lateral
                ? _value.lateral
                : lateral // ignore: cast_nullable_to_non_nullable
                      as int,
            backward: null == backward
                ? _value.backward
                : backward // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PassDirectionImplCopyWith<$Res>
    implements $PassDirectionCopyWith<$Res> {
  factory _$$PassDirectionImplCopyWith(
    _$PassDirectionImpl value,
    $Res Function(_$PassDirectionImpl) then,
  ) = __$$PassDirectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int forward, int lateral, int backward});
}

/// @nodoc
class __$$PassDirectionImplCopyWithImpl<$Res>
    extends _$PassDirectionCopyWithImpl<$Res, _$PassDirectionImpl>
    implements _$$PassDirectionImplCopyWith<$Res> {
  __$$PassDirectionImplCopyWithImpl(
    _$PassDirectionImpl _value,
    $Res Function(_$PassDirectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PassDirection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forward = null,
    Object? lateral = null,
    Object? backward = null,
  }) {
    return _then(
      _$PassDirectionImpl(
        forward: null == forward
            ? _value.forward
            : forward // ignore: cast_nullable_to_non_nullable
                  as int,
        lateral: null == lateral
            ? _value.lateral
            : lateral // ignore: cast_nullable_to_non_nullable
                  as int,
        backward: null == backward
            ? _value.backward
            : backward // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PassDirectionImpl implements _PassDirection {
  const _$PassDirectionImpl({
    this.forward = 0,
    this.lateral = 0,
    this.backward = 0,
  });

  factory _$PassDirectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PassDirectionImplFromJson(json);

  @override
  @JsonKey()
  final int forward;
  @override
  @JsonKey()
  final int lateral;
  @override
  @JsonKey()
  final int backward;

  @override
  String toString() {
    return 'PassDirection(forward: $forward, lateral: $lateral, backward: $backward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PassDirectionImpl &&
            (identical(other.forward, forward) || other.forward == forward) &&
            (identical(other.lateral, lateral) || other.lateral == lateral) &&
            (identical(other.backward, backward) ||
                other.backward == backward));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, forward, lateral, backward);

  /// Create a copy of PassDirection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PassDirectionImplCopyWith<_$PassDirectionImpl> get copyWith =>
      __$$PassDirectionImplCopyWithImpl<_$PassDirectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PassDirectionImplToJson(this);
  }
}

abstract class _PassDirection implements PassDirection {
  const factory _PassDirection({
    final int forward,
    final int lateral,
    final int backward,
  }) = _$PassDirectionImpl;

  factory _PassDirection.fromJson(Map<String, dynamic> json) =
      _$PassDirectionImpl.fromJson;

  @override
  int get forward;
  @override
  int get lateral;
  @override
  int get backward;

  /// Create a copy of PassDirection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PassDirectionImplCopyWith<_$PassDirectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Progression _$ProgressionFromJson(Map<String, dynamic> json) {
  return _Progression.fromJson(json);
}

/// @nodoc
mixin _$Progression {
  int get ballCarries => throw _privateConstructorUsedError;
  Dribbles get dribbles => throw _privateConstructorUsedError;
  int get defensiveLineBreaks => throw _privateConstructorUsedError;
  int get finalThirdEntries => throw _privateConstructorUsedError;

  /// Serializes this Progression to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Progression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgressionCopyWith<Progression> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressionCopyWith<$Res> {
  factory $ProgressionCopyWith(
    Progression value,
    $Res Function(Progression) then,
  ) = _$ProgressionCopyWithImpl<$Res, Progression>;
  @useResult
  $Res call({
    int ballCarries,
    Dribbles dribbles,
    int defensiveLineBreaks,
    int finalThirdEntries,
  });

  $DribblesCopyWith<$Res> get dribbles;
}

/// @nodoc
class _$ProgressionCopyWithImpl<$Res, $Val extends Progression>
    implements $ProgressionCopyWith<$Res> {
  _$ProgressionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Progression
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ballCarries = null,
    Object? dribbles = null,
    Object? defensiveLineBreaks = null,
    Object? finalThirdEntries = null,
  }) {
    return _then(
      _value.copyWith(
            ballCarries: null == ballCarries
                ? _value.ballCarries
                : ballCarries // ignore: cast_nullable_to_non_nullable
                      as int,
            dribbles: null == dribbles
                ? _value.dribbles
                : dribbles // ignore: cast_nullable_to_non_nullable
                      as Dribbles,
            defensiveLineBreaks: null == defensiveLineBreaks
                ? _value.defensiveLineBreaks
                : defensiveLineBreaks // ignore: cast_nullable_to_non_nullable
                      as int,
            finalThirdEntries: null == finalThirdEntries
                ? _value.finalThirdEntries
                : finalThirdEntries // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of Progression
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DribblesCopyWith<$Res> get dribbles {
    return $DribblesCopyWith<$Res>(_value.dribbles, (value) {
      return _then(_value.copyWith(dribbles: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgressionImplCopyWith<$Res>
    implements $ProgressionCopyWith<$Res> {
  factory _$$ProgressionImplCopyWith(
    _$ProgressionImpl value,
    $Res Function(_$ProgressionImpl) then,
  ) = __$$ProgressionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int ballCarries,
    Dribbles dribbles,
    int defensiveLineBreaks,
    int finalThirdEntries,
  });

  @override
  $DribblesCopyWith<$Res> get dribbles;
}

/// @nodoc
class __$$ProgressionImplCopyWithImpl<$Res>
    extends _$ProgressionCopyWithImpl<$Res, _$ProgressionImpl>
    implements _$$ProgressionImplCopyWith<$Res> {
  __$$ProgressionImplCopyWithImpl(
    _$ProgressionImpl _value,
    $Res Function(_$ProgressionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Progression
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ballCarries = null,
    Object? dribbles = null,
    Object? defensiveLineBreaks = null,
    Object? finalThirdEntries = null,
  }) {
    return _then(
      _$ProgressionImpl(
        ballCarries: null == ballCarries
            ? _value.ballCarries
            : ballCarries // ignore: cast_nullable_to_non_nullable
                  as int,
        dribbles: null == dribbles
            ? _value.dribbles
            : dribbles // ignore: cast_nullable_to_non_nullable
                  as Dribbles,
        defensiveLineBreaks: null == defensiveLineBreaks
            ? _value.defensiveLineBreaks
            : defensiveLineBreaks // ignore: cast_nullable_to_non_nullable
                  as int,
        finalThirdEntries: null == finalThirdEntries
            ? _value.finalThirdEntries
            : finalThirdEntries // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgressionImpl implements _Progression {
  const _$ProgressionImpl({
    this.ballCarries = 0,
    this.dribbles = const Dribbles(),
    this.defensiveLineBreaks = 0,
    this.finalThirdEntries = 0,
  });

  factory _$ProgressionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgressionImplFromJson(json);

  @override
  @JsonKey()
  final int ballCarries;
  @override
  @JsonKey()
  final Dribbles dribbles;
  @override
  @JsonKey()
  final int defensiveLineBreaks;
  @override
  @JsonKey()
  final int finalThirdEntries;

  @override
  String toString() {
    return 'Progression(ballCarries: $ballCarries, dribbles: $dribbles, defensiveLineBreaks: $defensiveLineBreaks, finalThirdEntries: $finalThirdEntries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressionImpl &&
            (identical(other.ballCarries, ballCarries) ||
                other.ballCarries == ballCarries) &&
            (identical(other.dribbles, dribbles) ||
                other.dribbles == dribbles) &&
            (identical(other.defensiveLineBreaks, defensiveLineBreaks) ||
                other.defensiveLineBreaks == defensiveLineBreaks) &&
            (identical(other.finalThirdEntries, finalThirdEntries) ||
                other.finalThirdEntries == finalThirdEntries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ballCarries,
    dribbles,
    defensiveLineBreaks,
    finalThirdEntries,
  );

  /// Create a copy of Progression
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressionImplCopyWith<_$ProgressionImpl> get copyWith =>
      __$$ProgressionImplCopyWithImpl<_$ProgressionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgressionImplToJson(this);
  }
}

abstract class _Progression implements Progression {
  const factory _Progression({
    final int ballCarries,
    final Dribbles dribbles,
    final int defensiveLineBreaks,
    final int finalThirdEntries,
  }) = _$ProgressionImpl;

  factory _Progression.fromJson(Map<String, dynamic> json) =
      _$ProgressionImpl.fromJson;

  @override
  int get ballCarries;
  @override
  Dribbles get dribbles;
  @override
  int get defensiveLineBreaks;
  @override
  int get finalThirdEntries;

  /// Create a copy of Progression
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressionImplCopyWith<_$ProgressionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dribbles _$DribblesFromJson(Map<String, dynamic> json) {
  return _Dribbles.fromJson(json);
}

/// @nodoc
mixin _$Dribbles {
  int get successful => throw _privateConstructorUsedError;
  int get failed => throw _privateConstructorUsedError;

  /// Serializes this Dribbles to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dribbles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DribblesCopyWith<Dribbles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DribblesCopyWith<$Res> {
  factory $DribblesCopyWith(Dribbles value, $Res Function(Dribbles) then) =
      _$DribblesCopyWithImpl<$Res, Dribbles>;
  @useResult
  $Res call({int successful, int failed});
}

/// @nodoc
class _$DribblesCopyWithImpl<$Res, $Val extends Dribbles>
    implements $DribblesCopyWith<$Res> {
  _$DribblesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dribbles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? successful = null, Object? failed = null}) {
    return _then(
      _value.copyWith(
            successful: null == successful
                ? _value.successful
                : successful // ignore: cast_nullable_to_non_nullable
                      as int,
            failed: null == failed
                ? _value.failed
                : failed // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DribblesImplCopyWith<$Res>
    implements $DribblesCopyWith<$Res> {
  factory _$$DribblesImplCopyWith(
    _$DribblesImpl value,
    $Res Function(_$DribblesImpl) then,
  ) = __$$DribblesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int successful, int failed});
}

/// @nodoc
class __$$DribblesImplCopyWithImpl<$Res>
    extends _$DribblesCopyWithImpl<$Res, _$DribblesImpl>
    implements _$$DribblesImplCopyWith<$Res> {
  __$$DribblesImplCopyWithImpl(
    _$DribblesImpl _value,
    $Res Function(_$DribblesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Dribbles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? successful = null, Object? failed = null}) {
    return _then(
      _$DribblesImpl(
        successful: null == successful
            ? _value.successful
            : successful // ignore: cast_nullable_to_non_nullable
                  as int,
        failed: null == failed
            ? _value.failed
            : failed // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DribblesImpl implements _Dribbles {
  const _$DribblesImpl({this.successful = 0, this.failed = 0});

  factory _$DribblesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DribblesImplFromJson(json);

  @override
  @JsonKey()
  final int successful;
  @override
  @JsonKey()
  final int failed;

  @override
  String toString() {
    return 'Dribbles(successful: $successful, failed: $failed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DribblesImpl &&
            (identical(other.successful, successful) ||
                other.successful == successful) &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, successful, failed);

  /// Create a copy of Dribbles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DribblesImplCopyWith<_$DribblesImpl> get copyWith =>
      __$$DribblesImplCopyWithImpl<_$DribblesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DribblesImplToJson(this);
  }
}

abstract class _Dribbles implements Dribbles {
  const factory _Dribbles({final int successful, final int failed}) =
      _$DribblesImpl;

  factory _Dribbles.fromJson(Map<String, dynamic> json) =
      _$DribblesImpl.fromJson;

  @override
  int get successful;
  @override
  int get failed;

  /// Create a copy of Dribbles
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DribblesImplCopyWith<_$DribblesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OffensivePhase _$OffensivePhaseFromJson(Map<String, dynamic> json) {
  return _OffensivePhase.fromJson(json);
}

/// @nodoc
mixin _$OffensivePhase {
  Shots get shots => throw _privateConstructorUsedError;
  Creation get creation => throw _privateConstructorUsedError;
  MostDangerousPlayer get mostDangerousPlayer =>
      throw _privateConstructorUsedError;

  /// Serializes this OffensivePhase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffensivePhaseCopyWith<OffensivePhase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffensivePhaseCopyWith<$Res> {
  factory $OffensivePhaseCopyWith(
    OffensivePhase value,
    $Res Function(OffensivePhase) then,
  ) = _$OffensivePhaseCopyWithImpl<$Res, OffensivePhase>;
  @useResult
  $Res call({
    Shots shots,
    Creation creation,
    MostDangerousPlayer mostDangerousPlayer,
  });

  $ShotsCopyWith<$Res> get shots;
  $CreationCopyWith<$Res> get creation;
  $MostDangerousPlayerCopyWith<$Res> get mostDangerousPlayer;
}

/// @nodoc
class _$OffensivePhaseCopyWithImpl<$Res, $Val extends OffensivePhase>
    implements $OffensivePhaseCopyWith<$Res> {
  _$OffensivePhaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shots = null,
    Object? creation = null,
    Object? mostDangerousPlayer = null,
  }) {
    return _then(
      _value.copyWith(
            shots: null == shots
                ? _value.shots
                : shots // ignore: cast_nullable_to_non_nullable
                      as Shots,
            creation: null == creation
                ? _value.creation
                : creation // ignore: cast_nullable_to_non_nullable
                      as Creation,
            mostDangerousPlayer: null == mostDangerousPlayer
                ? _value.mostDangerousPlayer
                : mostDangerousPlayer // ignore: cast_nullable_to_non_nullable
                      as MostDangerousPlayer,
          )
          as $Val,
    );
  }

  /// Create a copy of OffensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShotsCopyWith<$Res> get shots {
    return $ShotsCopyWith<$Res>(_value.shots, (value) {
      return _then(_value.copyWith(shots: value) as $Val);
    });
  }

  /// Create a copy of OffensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreationCopyWith<$Res> get creation {
    return $CreationCopyWith<$Res>(_value.creation, (value) {
      return _then(_value.copyWith(creation: value) as $Val);
    });
  }

  /// Create a copy of OffensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MostDangerousPlayerCopyWith<$Res> get mostDangerousPlayer {
    return $MostDangerousPlayerCopyWith<$Res>(_value.mostDangerousPlayer, (
      value,
    ) {
      return _then(_value.copyWith(mostDangerousPlayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OffensivePhaseImplCopyWith<$Res>
    implements $OffensivePhaseCopyWith<$Res> {
  factory _$$OffensivePhaseImplCopyWith(
    _$OffensivePhaseImpl value,
    $Res Function(_$OffensivePhaseImpl) then,
  ) = __$$OffensivePhaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Shots shots,
    Creation creation,
    MostDangerousPlayer mostDangerousPlayer,
  });

  @override
  $ShotsCopyWith<$Res> get shots;
  @override
  $CreationCopyWith<$Res> get creation;
  @override
  $MostDangerousPlayerCopyWith<$Res> get mostDangerousPlayer;
}

/// @nodoc
class __$$OffensivePhaseImplCopyWithImpl<$Res>
    extends _$OffensivePhaseCopyWithImpl<$Res, _$OffensivePhaseImpl>
    implements _$$OffensivePhaseImplCopyWith<$Res> {
  __$$OffensivePhaseImplCopyWithImpl(
    _$OffensivePhaseImpl _value,
    $Res Function(_$OffensivePhaseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OffensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shots = null,
    Object? creation = null,
    Object? mostDangerousPlayer = null,
  }) {
    return _then(
      _$OffensivePhaseImpl(
        shots: null == shots
            ? _value.shots
            : shots // ignore: cast_nullable_to_non_nullable
                  as Shots,
        creation: null == creation
            ? _value.creation
            : creation // ignore: cast_nullable_to_non_nullable
                  as Creation,
        mostDangerousPlayer: null == mostDangerousPlayer
            ? _value.mostDangerousPlayer
            : mostDangerousPlayer // ignore: cast_nullable_to_non_nullable
                  as MostDangerousPlayer,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OffensivePhaseImpl implements _OffensivePhase {
  const _$OffensivePhaseImpl({
    this.shots = const Shots(),
    this.creation = const Creation(),
    this.mostDangerousPlayer = const MostDangerousPlayer(),
  });

  factory _$OffensivePhaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffensivePhaseImplFromJson(json);

  @override
  @JsonKey()
  final Shots shots;
  @override
  @JsonKey()
  final Creation creation;
  @override
  @JsonKey()
  final MostDangerousPlayer mostDangerousPlayer;

  @override
  String toString() {
    return 'OffensivePhase(shots: $shots, creation: $creation, mostDangerousPlayer: $mostDangerousPlayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffensivePhaseImpl &&
            (identical(other.shots, shots) || other.shots == shots) &&
            (identical(other.creation, creation) ||
                other.creation == creation) &&
            (identical(other.mostDangerousPlayer, mostDangerousPlayer) ||
                other.mostDangerousPlayer == mostDangerousPlayer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, shots, creation, mostDangerousPlayer);

  /// Create a copy of OffensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffensivePhaseImplCopyWith<_$OffensivePhaseImpl> get copyWith =>
      __$$OffensivePhaseImplCopyWithImpl<_$OffensivePhaseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OffensivePhaseImplToJson(this);
  }
}

abstract class _OffensivePhase implements OffensivePhase {
  const factory _OffensivePhase({
    final Shots shots,
    final Creation creation,
    final MostDangerousPlayer mostDangerousPlayer,
  }) = _$OffensivePhaseImpl;

  factory _OffensivePhase.fromJson(Map<String, dynamic> json) =
      _$OffensivePhaseImpl.fromJson;

  @override
  Shots get shots;
  @override
  Creation get creation;
  @override
  MostDangerousPlayer get mostDangerousPlayer;

  /// Create a copy of OffensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffensivePhaseImplCopyWith<_$OffensivePhaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shots _$ShotsFromJson(Map<String, dynamic> json) {
  return _Shots.fromJson(json);
}

/// @nodoc
mixin _$Shots {
  int get total => throw _privateConstructorUsedError;
  int get onTarget => throw _privateConstructorUsedError;
  int get offTarget => throw _privateConstructorUsedError;
  int get blocked => throw _privateConstructorUsedError;
  double get xG => throw _privateConstructorUsedError;
  int get insideArea => throw _privateConstructorUsedError;
  int get outsideArea => throw _privateConstructorUsedError;
  int get fromSetPieces => throw _privateConstructorUsedError;

  /// Serializes this Shots to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shots
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShotsCopyWith<Shots> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShotsCopyWith<$Res> {
  factory $ShotsCopyWith(Shots value, $Res Function(Shots) then) =
      _$ShotsCopyWithImpl<$Res, Shots>;
  @useResult
  $Res call({
    int total,
    int onTarget,
    int offTarget,
    int blocked,
    double xG,
    int insideArea,
    int outsideArea,
    int fromSetPieces,
  });
}

/// @nodoc
class _$ShotsCopyWithImpl<$Res, $Val extends Shots>
    implements $ShotsCopyWith<$Res> {
  _$ShotsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shots
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? onTarget = null,
    Object? offTarget = null,
    Object? blocked = null,
    Object? xG = null,
    Object? insideArea = null,
    Object? outsideArea = null,
    Object? fromSetPieces = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            onTarget: null == onTarget
                ? _value.onTarget
                : onTarget // ignore: cast_nullable_to_non_nullable
                      as int,
            offTarget: null == offTarget
                ? _value.offTarget
                : offTarget // ignore: cast_nullable_to_non_nullable
                      as int,
            blocked: null == blocked
                ? _value.blocked
                : blocked // ignore: cast_nullable_to_non_nullable
                      as int,
            xG: null == xG
                ? _value.xG
                : xG // ignore: cast_nullable_to_non_nullable
                      as double,
            insideArea: null == insideArea
                ? _value.insideArea
                : insideArea // ignore: cast_nullable_to_non_nullable
                      as int,
            outsideArea: null == outsideArea
                ? _value.outsideArea
                : outsideArea // ignore: cast_nullable_to_non_nullable
                      as int,
            fromSetPieces: null == fromSetPieces
                ? _value.fromSetPieces
                : fromSetPieces // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShotsImplCopyWith<$Res> implements $ShotsCopyWith<$Res> {
  factory _$$ShotsImplCopyWith(
    _$ShotsImpl value,
    $Res Function(_$ShotsImpl) then,
  ) = __$$ShotsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int onTarget,
    int offTarget,
    int blocked,
    double xG,
    int insideArea,
    int outsideArea,
    int fromSetPieces,
  });
}

/// @nodoc
class __$$ShotsImplCopyWithImpl<$Res>
    extends _$ShotsCopyWithImpl<$Res, _$ShotsImpl>
    implements _$$ShotsImplCopyWith<$Res> {
  __$$ShotsImplCopyWithImpl(
    _$ShotsImpl _value,
    $Res Function(_$ShotsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Shots
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? onTarget = null,
    Object? offTarget = null,
    Object? blocked = null,
    Object? xG = null,
    Object? insideArea = null,
    Object? outsideArea = null,
    Object? fromSetPieces = null,
  }) {
    return _then(
      _$ShotsImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        onTarget: null == onTarget
            ? _value.onTarget
            : onTarget // ignore: cast_nullable_to_non_nullable
                  as int,
        offTarget: null == offTarget
            ? _value.offTarget
            : offTarget // ignore: cast_nullable_to_non_nullable
                  as int,
        blocked: null == blocked
            ? _value.blocked
            : blocked // ignore: cast_nullable_to_non_nullable
                  as int,
        xG: null == xG
            ? _value.xG
            : xG // ignore: cast_nullable_to_non_nullable
                  as double,
        insideArea: null == insideArea
            ? _value.insideArea
            : insideArea // ignore: cast_nullable_to_non_nullable
                  as int,
        outsideArea: null == outsideArea
            ? _value.outsideArea
            : outsideArea // ignore: cast_nullable_to_non_nullable
                  as int,
        fromSetPieces: null == fromSetPieces
            ? _value.fromSetPieces
            : fromSetPieces // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShotsImpl implements _Shots {
  const _$ShotsImpl({
    this.total = 0,
    this.onTarget = 0,
    this.offTarget = 0,
    this.blocked = 0,
    this.xG = 0.0,
    this.insideArea = 0,
    this.outsideArea = 0,
    this.fromSetPieces = 0,
  });

  factory _$ShotsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShotsImplFromJson(json);

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int onTarget;
  @override
  @JsonKey()
  final int offTarget;
  @override
  @JsonKey()
  final int blocked;
  @override
  @JsonKey()
  final double xG;
  @override
  @JsonKey()
  final int insideArea;
  @override
  @JsonKey()
  final int outsideArea;
  @override
  @JsonKey()
  final int fromSetPieces;

  @override
  String toString() {
    return 'Shots(total: $total, onTarget: $onTarget, offTarget: $offTarget, blocked: $blocked, xG: $xG, insideArea: $insideArea, outsideArea: $outsideArea, fromSetPieces: $fromSetPieces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShotsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.onTarget, onTarget) ||
                other.onTarget == onTarget) &&
            (identical(other.offTarget, offTarget) ||
                other.offTarget == offTarget) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.xG, xG) || other.xG == xG) &&
            (identical(other.insideArea, insideArea) ||
                other.insideArea == insideArea) &&
            (identical(other.outsideArea, outsideArea) ||
                other.outsideArea == outsideArea) &&
            (identical(other.fromSetPieces, fromSetPieces) ||
                other.fromSetPieces == fromSetPieces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    onTarget,
    offTarget,
    blocked,
    xG,
    insideArea,
    outsideArea,
    fromSetPieces,
  );

  /// Create a copy of Shots
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShotsImplCopyWith<_$ShotsImpl> get copyWith =>
      __$$ShotsImplCopyWithImpl<_$ShotsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShotsImplToJson(this);
  }
}

abstract class _Shots implements Shots {
  const factory _Shots({
    final int total,
    final int onTarget,
    final int offTarget,
    final int blocked,
    final double xG,
    final int insideArea,
    final int outsideArea,
    final int fromSetPieces,
  }) = _$ShotsImpl;

  factory _Shots.fromJson(Map<String, dynamic> json) = _$ShotsImpl.fromJson;

  @override
  int get total;
  @override
  int get onTarget;
  @override
  int get offTarget;
  @override
  int get blocked;
  @override
  double get xG;
  @override
  int get insideArea;
  @override
  int get outsideArea;
  @override
  int get fromSetPieces;

  /// Create a copy of Shots
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShotsImplCopyWith<_$ShotsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Creation _$CreationFromJson(Map<String, dynamic> json) {
  return _Creation.fromJson(json);
}

/// @nodoc
mixin _$Creation {
  int get chancesCreated => throw _privateConstructorUsedError;
  int get bigChances => throw _privateConstructorUsedError;
  int get assists => throw _privateConstructorUsedError;
  int get preAssists => throw _privateConstructorUsedError;
  int get offensive1v1Won => throw _privateConstructorUsedError;
  int get offBallCuts => throw _privateConstructorUsedError;

  /// Serializes this Creation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Creation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreationCopyWith<Creation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreationCopyWith<$Res> {
  factory $CreationCopyWith(Creation value, $Res Function(Creation) then) =
      _$CreationCopyWithImpl<$Res, Creation>;
  @useResult
  $Res call({
    int chancesCreated,
    int bigChances,
    int assists,
    int preAssists,
    int offensive1v1Won,
    int offBallCuts,
  });
}

/// @nodoc
class _$CreationCopyWithImpl<$Res, $Val extends Creation>
    implements $CreationCopyWith<$Res> {
  _$CreationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Creation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chancesCreated = null,
    Object? bigChances = null,
    Object? assists = null,
    Object? preAssists = null,
    Object? offensive1v1Won = null,
    Object? offBallCuts = null,
  }) {
    return _then(
      _value.copyWith(
            chancesCreated: null == chancesCreated
                ? _value.chancesCreated
                : chancesCreated // ignore: cast_nullable_to_non_nullable
                      as int,
            bigChances: null == bigChances
                ? _value.bigChances
                : bigChances // ignore: cast_nullable_to_non_nullable
                      as int,
            assists: null == assists
                ? _value.assists
                : assists // ignore: cast_nullable_to_non_nullable
                      as int,
            preAssists: null == preAssists
                ? _value.preAssists
                : preAssists // ignore: cast_nullable_to_non_nullable
                      as int,
            offensive1v1Won: null == offensive1v1Won
                ? _value.offensive1v1Won
                : offensive1v1Won // ignore: cast_nullable_to_non_nullable
                      as int,
            offBallCuts: null == offBallCuts
                ? _value.offBallCuts
                : offBallCuts // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreationImplCopyWith<$Res>
    implements $CreationCopyWith<$Res> {
  factory _$$CreationImplCopyWith(
    _$CreationImpl value,
    $Res Function(_$CreationImpl) then,
  ) = __$$CreationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int chancesCreated,
    int bigChances,
    int assists,
    int preAssists,
    int offensive1v1Won,
    int offBallCuts,
  });
}

/// @nodoc
class __$$CreationImplCopyWithImpl<$Res>
    extends _$CreationCopyWithImpl<$Res, _$CreationImpl>
    implements _$$CreationImplCopyWith<$Res> {
  __$$CreationImplCopyWithImpl(
    _$CreationImpl _value,
    $Res Function(_$CreationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Creation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chancesCreated = null,
    Object? bigChances = null,
    Object? assists = null,
    Object? preAssists = null,
    Object? offensive1v1Won = null,
    Object? offBallCuts = null,
  }) {
    return _then(
      _$CreationImpl(
        chancesCreated: null == chancesCreated
            ? _value.chancesCreated
            : chancesCreated // ignore: cast_nullable_to_non_nullable
                  as int,
        bigChances: null == bigChances
            ? _value.bigChances
            : bigChances // ignore: cast_nullable_to_non_nullable
                  as int,
        assists: null == assists
            ? _value.assists
            : assists // ignore: cast_nullable_to_non_nullable
                  as int,
        preAssists: null == preAssists
            ? _value.preAssists
            : preAssists // ignore: cast_nullable_to_non_nullable
                  as int,
        offensive1v1Won: null == offensive1v1Won
            ? _value.offensive1v1Won
            : offensive1v1Won // ignore: cast_nullable_to_non_nullable
                  as int,
        offBallCuts: null == offBallCuts
            ? _value.offBallCuts
            : offBallCuts // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreationImpl implements _Creation {
  const _$CreationImpl({
    this.chancesCreated = 0,
    this.bigChances = 0,
    this.assists = 0,
    this.preAssists = 0,
    this.offensive1v1Won = 0,
    this.offBallCuts = 0,
  });

  factory _$CreationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreationImplFromJson(json);

  @override
  @JsonKey()
  final int chancesCreated;
  @override
  @JsonKey()
  final int bigChances;
  @override
  @JsonKey()
  final int assists;
  @override
  @JsonKey()
  final int preAssists;
  @override
  @JsonKey()
  final int offensive1v1Won;
  @override
  @JsonKey()
  final int offBallCuts;

  @override
  String toString() {
    return 'Creation(chancesCreated: $chancesCreated, bigChances: $bigChances, assists: $assists, preAssists: $preAssists, offensive1v1Won: $offensive1v1Won, offBallCuts: $offBallCuts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreationImpl &&
            (identical(other.chancesCreated, chancesCreated) ||
                other.chancesCreated == chancesCreated) &&
            (identical(other.bigChances, bigChances) ||
                other.bigChances == bigChances) &&
            (identical(other.assists, assists) || other.assists == assists) &&
            (identical(other.preAssists, preAssists) ||
                other.preAssists == preAssists) &&
            (identical(other.offensive1v1Won, offensive1v1Won) ||
                other.offensive1v1Won == offensive1v1Won) &&
            (identical(other.offBallCuts, offBallCuts) ||
                other.offBallCuts == offBallCuts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    chancesCreated,
    bigChances,
    assists,
    preAssists,
    offensive1v1Won,
    offBallCuts,
  );

  /// Create a copy of Creation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreationImplCopyWith<_$CreationImpl> get copyWith =>
      __$$CreationImplCopyWithImpl<_$CreationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreationImplToJson(this);
  }
}

abstract class _Creation implements Creation {
  const factory _Creation({
    final int chancesCreated,
    final int bigChances,
    final int assists,
    final int preAssists,
    final int offensive1v1Won,
    final int offBallCuts,
  }) = _$CreationImpl;

  factory _Creation.fromJson(Map<String, dynamic> json) =
      _$CreationImpl.fromJson;

  @override
  int get chancesCreated;
  @override
  int get bigChances;
  @override
  int get assists;
  @override
  int get preAssists;
  @override
  int get offensive1v1Won;
  @override
  int get offBallCuts;

  /// Create a copy of Creation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreationImplCopyWith<_$CreationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MostDangerousPlayer _$MostDangerousPlayerFromJson(Map<String, dynamic> json) {
  return _MostDangerousPlayer.fromJson(json);
}

/// @nodoc
mixin _$MostDangerousPlayer {
  String get name => throw _privateConstructorUsedError;
  int get shotsGenerated => throw _privateConstructorUsedError;
  double get individualXG => throw _privateConstructorUsedError;
  int get chancesCreated => throw _privateConstructorUsedError;
  int get dribblesSuccessful => throw _privateConstructorUsedError;
  int get offensiveInvolvementPercent => throw _privateConstructorUsedError;

  /// Serializes this MostDangerousPlayer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MostDangerousPlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MostDangerousPlayerCopyWith<MostDangerousPlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostDangerousPlayerCopyWith<$Res> {
  factory $MostDangerousPlayerCopyWith(
    MostDangerousPlayer value,
    $Res Function(MostDangerousPlayer) then,
  ) = _$MostDangerousPlayerCopyWithImpl<$Res, MostDangerousPlayer>;
  @useResult
  $Res call({
    String name,
    int shotsGenerated,
    double individualXG,
    int chancesCreated,
    int dribblesSuccessful,
    int offensiveInvolvementPercent,
  });
}

/// @nodoc
class _$MostDangerousPlayerCopyWithImpl<$Res, $Val extends MostDangerousPlayer>
    implements $MostDangerousPlayerCopyWith<$Res> {
  _$MostDangerousPlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MostDangerousPlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shotsGenerated = null,
    Object? individualXG = null,
    Object? chancesCreated = null,
    Object? dribblesSuccessful = null,
    Object? offensiveInvolvementPercent = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            shotsGenerated: null == shotsGenerated
                ? _value.shotsGenerated
                : shotsGenerated // ignore: cast_nullable_to_non_nullable
                      as int,
            individualXG: null == individualXG
                ? _value.individualXG
                : individualXG // ignore: cast_nullable_to_non_nullable
                      as double,
            chancesCreated: null == chancesCreated
                ? _value.chancesCreated
                : chancesCreated // ignore: cast_nullable_to_non_nullable
                      as int,
            dribblesSuccessful: null == dribblesSuccessful
                ? _value.dribblesSuccessful
                : dribblesSuccessful // ignore: cast_nullable_to_non_nullable
                      as int,
            offensiveInvolvementPercent: null == offensiveInvolvementPercent
                ? _value.offensiveInvolvementPercent
                : offensiveInvolvementPercent // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MostDangerousPlayerImplCopyWith<$Res>
    implements $MostDangerousPlayerCopyWith<$Res> {
  factory _$$MostDangerousPlayerImplCopyWith(
    _$MostDangerousPlayerImpl value,
    $Res Function(_$MostDangerousPlayerImpl) then,
  ) = __$$MostDangerousPlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    int shotsGenerated,
    double individualXG,
    int chancesCreated,
    int dribblesSuccessful,
    int offensiveInvolvementPercent,
  });
}

/// @nodoc
class __$$MostDangerousPlayerImplCopyWithImpl<$Res>
    extends _$MostDangerousPlayerCopyWithImpl<$Res, _$MostDangerousPlayerImpl>
    implements _$$MostDangerousPlayerImplCopyWith<$Res> {
  __$$MostDangerousPlayerImplCopyWithImpl(
    _$MostDangerousPlayerImpl _value,
    $Res Function(_$MostDangerousPlayerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MostDangerousPlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shotsGenerated = null,
    Object? individualXG = null,
    Object? chancesCreated = null,
    Object? dribblesSuccessful = null,
    Object? offensiveInvolvementPercent = null,
  }) {
    return _then(
      _$MostDangerousPlayerImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        shotsGenerated: null == shotsGenerated
            ? _value.shotsGenerated
            : shotsGenerated // ignore: cast_nullable_to_non_nullable
                  as int,
        individualXG: null == individualXG
            ? _value.individualXG
            : individualXG // ignore: cast_nullable_to_non_nullable
                  as double,
        chancesCreated: null == chancesCreated
            ? _value.chancesCreated
            : chancesCreated // ignore: cast_nullable_to_non_nullable
                  as int,
        dribblesSuccessful: null == dribblesSuccessful
            ? _value.dribblesSuccessful
            : dribblesSuccessful // ignore: cast_nullable_to_non_nullable
                  as int,
        offensiveInvolvementPercent: null == offensiveInvolvementPercent
            ? _value.offensiveInvolvementPercent
            : offensiveInvolvementPercent // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MostDangerousPlayerImpl implements _MostDangerousPlayer {
  const _$MostDangerousPlayerImpl({
    this.name = '',
    this.shotsGenerated = 0,
    this.individualXG = 0.0,
    this.chancesCreated = 0,
    this.dribblesSuccessful = 0,
    this.offensiveInvolvementPercent = 0,
  });

  factory _$MostDangerousPlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$MostDangerousPlayerImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int shotsGenerated;
  @override
  @JsonKey()
  final double individualXG;
  @override
  @JsonKey()
  final int chancesCreated;
  @override
  @JsonKey()
  final int dribblesSuccessful;
  @override
  @JsonKey()
  final int offensiveInvolvementPercent;

  @override
  String toString() {
    return 'MostDangerousPlayer(name: $name, shotsGenerated: $shotsGenerated, individualXG: $individualXG, chancesCreated: $chancesCreated, dribblesSuccessful: $dribblesSuccessful, offensiveInvolvementPercent: $offensiveInvolvementPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MostDangerousPlayerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shotsGenerated, shotsGenerated) ||
                other.shotsGenerated == shotsGenerated) &&
            (identical(other.individualXG, individualXG) ||
                other.individualXG == individualXG) &&
            (identical(other.chancesCreated, chancesCreated) ||
                other.chancesCreated == chancesCreated) &&
            (identical(other.dribblesSuccessful, dribblesSuccessful) ||
                other.dribblesSuccessful == dribblesSuccessful) &&
            (identical(
                  other.offensiveInvolvementPercent,
                  offensiveInvolvementPercent,
                ) ||
                other.offensiveInvolvementPercent ==
                    offensiveInvolvementPercent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    shotsGenerated,
    individualXG,
    chancesCreated,
    dribblesSuccessful,
    offensiveInvolvementPercent,
  );

  /// Create a copy of MostDangerousPlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MostDangerousPlayerImplCopyWith<_$MostDangerousPlayerImpl> get copyWith =>
      __$$MostDangerousPlayerImplCopyWithImpl<_$MostDangerousPlayerImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MostDangerousPlayerImplToJson(this);
  }
}

abstract class _MostDangerousPlayer implements MostDangerousPlayer {
  const factory _MostDangerousPlayer({
    final String name,
    final int shotsGenerated,
    final double individualXG,
    final int chancesCreated,
    final int dribblesSuccessful,
    final int offensiveInvolvementPercent,
  }) = _$MostDangerousPlayerImpl;

  factory _MostDangerousPlayer.fromJson(Map<String, dynamic> json) =
      _$MostDangerousPlayerImpl.fromJson;

  @override
  String get name;
  @override
  int get shotsGenerated;
  @override
  double get individualXG;
  @override
  int get chancesCreated;
  @override
  int get dribblesSuccessful;
  @override
  int get offensiveInvolvementPercent;

  /// Create a copy of MostDangerousPlayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MostDangerousPlayerImplCopyWith<_$MostDangerousPlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DefensivePhase _$DefensivePhaseFromJson(Map<String, dynamic> json) {
  return _DefensivePhase.fromJson(json);
}

/// @nodoc
mixin _$DefensivePhase {
  PressureAndRecovery get pressureAndRecovery =>
      throw _privateConstructorUsedError;
  Duels get duels => throw _privateConstructorUsedError;
  Structure get structure => throw _privateConstructorUsedError;

  /// Serializes this DefensivePhase to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DefensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefensivePhaseCopyWith<DefensivePhase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefensivePhaseCopyWith<$Res> {
  factory $DefensivePhaseCopyWith(
    DefensivePhase value,
    $Res Function(DefensivePhase) then,
  ) = _$DefensivePhaseCopyWithImpl<$Res, DefensivePhase>;
  @useResult
  $Res call({
    PressureAndRecovery pressureAndRecovery,
    Duels duels,
    Structure structure,
  });

  $PressureAndRecoveryCopyWith<$Res> get pressureAndRecovery;
  $DuelsCopyWith<$Res> get duels;
  $StructureCopyWith<$Res> get structure;
}

/// @nodoc
class _$DefensivePhaseCopyWithImpl<$Res, $Val extends DefensivePhase>
    implements $DefensivePhaseCopyWith<$Res> {
  _$DefensivePhaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pressureAndRecovery = null,
    Object? duels = null,
    Object? structure = null,
  }) {
    return _then(
      _value.copyWith(
            pressureAndRecovery: null == pressureAndRecovery
                ? _value.pressureAndRecovery
                : pressureAndRecovery // ignore: cast_nullable_to_non_nullable
                      as PressureAndRecovery,
            duels: null == duels
                ? _value.duels
                : duels // ignore: cast_nullable_to_non_nullable
                      as Duels,
            structure: null == structure
                ? _value.structure
                : structure // ignore: cast_nullable_to_non_nullable
                      as Structure,
          )
          as $Val,
    );
  }

  /// Create a copy of DefensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PressureAndRecoveryCopyWith<$Res> get pressureAndRecovery {
    return $PressureAndRecoveryCopyWith<$Res>(_value.pressureAndRecovery, (
      value,
    ) {
      return _then(_value.copyWith(pressureAndRecovery: value) as $Val);
    });
  }

  /// Create a copy of DefensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DuelsCopyWith<$Res> get duels {
    return $DuelsCopyWith<$Res>(_value.duels, (value) {
      return _then(_value.copyWith(duels: value) as $Val);
    });
  }

  /// Create a copy of DefensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StructureCopyWith<$Res> get structure {
    return $StructureCopyWith<$Res>(_value.structure, (value) {
      return _then(_value.copyWith(structure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DefensivePhaseImplCopyWith<$Res>
    implements $DefensivePhaseCopyWith<$Res> {
  factory _$$DefensivePhaseImplCopyWith(
    _$DefensivePhaseImpl value,
    $Res Function(_$DefensivePhaseImpl) then,
  ) = __$$DefensivePhaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    PressureAndRecovery pressureAndRecovery,
    Duels duels,
    Structure structure,
  });

  @override
  $PressureAndRecoveryCopyWith<$Res> get pressureAndRecovery;
  @override
  $DuelsCopyWith<$Res> get duels;
  @override
  $StructureCopyWith<$Res> get structure;
}

/// @nodoc
class __$$DefensivePhaseImplCopyWithImpl<$Res>
    extends _$DefensivePhaseCopyWithImpl<$Res, _$DefensivePhaseImpl>
    implements _$$DefensivePhaseImplCopyWith<$Res> {
  __$$DefensivePhaseImplCopyWithImpl(
    _$DefensivePhaseImpl _value,
    $Res Function(_$DefensivePhaseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DefensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pressureAndRecovery = null,
    Object? duels = null,
    Object? structure = null,
  }) {
    return _then(
      _$DefensivePhaseImpl(
        pressureAndRecovery: null == pressureAndRecovery
            ? _value.pressureAndRecovery
            : pressureAndRecovery // ignore: cast_nullable_to_non_nullable
                  as PressureAndRecovery,
        duels: null == duels
            ? _value.duels
            : duels // ignore: cast_nullable_to_non_nullable
                  as Duels,
        structure: null == structure
            ? _value.structure
            : structure // ignore: cast_nullable_to_non_nullable
                  as Structure,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DefensivePhaseImpl implements _DefensivePhase {
  const _$DefensivePhaseImpl({
    this.pressureAndRecovery = const PressureAndRecovery(),
    this.duels = const Duels(),
    this.structure = const Structure(),
  });

  factory _$DefensivePhaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefensivePhaseImplFromJson(json);

  @override
  @JsonKey()
  final PressureAndRecovery pressureAndRecovery;
  @override
  @JsonKey()
  final Duels duels;
  @override
  @JsonKey()
  final Structure structure;

  @override
  String toString() {
    return 'DefensivePhase(pressureAndRecovery: $pressureAndRecovery, duels: $duels, structure: $structure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefensivePhaseImpl &&
            (identical(other.pressureAndRecovery, pressureAndRecovery) ||
                other.pressureAndRecovery == pressureAndRecovery) &&
            (identical(other.duels, duels) || other.duels == duels) &&
            (identical(other.structure, structure) ||
                other.structure == structure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pressureAndRecovery, duels, structure);

  /// Create a copy of DefensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefensivePhaseImplCopyWith<_$DefensivePhaseImpl> get copyWith =>
      __$$DefensivePhaseImplCopyWithImpl<_$DefensivePhaseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DefensivePhaseImplToJson(this);
  }
}

abstract class _DefensivePhase implements DefensivePhase {
  const factory _DefensivePhase({
    final PressureAndRecovery pressureAndRecovery,
    final Duels duels,
    final Structure structure,
  }) = _$DefensivePhaseImpl;

  factory _DefensivePhase.fromJson(Map<String, dynamic> json) =
      _$DefensivePhaseImpl.fromJson;

  @override
  PressureAndRecovery get pressureAndRecovery;
  @override
  Duels get duels;
  @override
  Structure get structure;

  /// Create a copy of DefensivePhase
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefensivePhaseImplCopyWith<_$DefensivePhaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PressureAndRecovery _$PressureAndRecoveryFromJson(Map<String, dynamic> json) {
  return _PressureAndRecovery.fromJson(json);
}

/// @nodoc
mixin _$PressureAndRecovery {
  int get ballRecoveries => throw _privateConstructorUsedError;
  RecoveryZones get recoveryZones => throw _privateConstructorUsedError;
  Pressing get pressing => throw _privateConstructorUsedError;
  double get averageRecoveryTimeSeconds => throw _privateConstructorUsedError;

  /// Serializes this PressureAndRecovery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PressureAndRecovery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PressureAndRecoveryCopyWith<PressureAndRecovery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PressureAndRecoveryCopyWith<$Res> {
  factory $PressureAndRecoveryCopyWith(
    PressureAndRecovery value,
    $Res Function(PressureAndRecovery) then,
  ) = _$PressureAndRecoveryCopyWithImpl<$Res, PressureAndRecovery>;
  @useResult
  $Res call({
    int ballRecoveries,
    RecoveryZones recoveryZones,
    Pressing pressing,
    double averageRecoveryTimeSeconds,
  });

  $RecoveryZonesCopyWith<$Res> get recoveryZones;
  $PressingCopyWith<$Res> get pressing;
}

/// @nodoc
class _$PressureAndRecoveryCopyWithImpl<$Res, $Val extends PressureAndRecovery>
    implements $PressureAndRecoveryCopyWith<$Res> {
  _$PressureAndRecoveryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PressureAndRecovery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ballRecoveries = null,
    Object? recoveryZones = null,
    Object? pressing = null,
    Object? averageRecoveryTimeSeconds = null,
  }) {
    return _then(
      _value.copyWith(
            ballRecoveries: null == ballRecoveries
                ? _value.ballRecoveries
                : ballRecoveries // ignore: cast_nullable_to_non_nullable
                      as int,
            recoveryZones: null == recoveryZones
                ? _value.recoveryZones
                : recoveryZones // ignore: cast_nullable_to_non_nullable
                      as RecoveryZones,
            pressing: null == pressing
                ? _value.pressing
                : pressing // ignore: cast_nullable_to_non_nullable
                      as Pressing,
            averageRecoveryTimeSeconds: null == averageRecoveryTimeSeconds
                ? _value.averageRecoveryTimeSeconds
                : averageRecoveryTimeSeconds // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }

  /// Create a copy of PressureAndRecovery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecoveryZonesCopyWith<$Res> get recoveryZones {
    return $RecoveryZonesCopyWith<$Res>(_value.recoveryZones, (value) {
      return _then(_value.copyWith(recoveryZones: value) as $Val);
    });
  }

  /// Create a copy of PressureAndRecovery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PressingCopyWith<$Res> get pressing {
    return $PressingCopyWith<$Res>(_value.pressing, (value) {
      return _then(_value.copyWith(pressing: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PressureAndRecoveryImplCopyWith<$Res>
    implements $PressureAndRecoveryCopyWith<$Res> {
  factory _$$PressureAndRecoveryImplCopyWith(
    _$PressureAndRecoveryImpl value,
    $Res Function(_$PressureAndRecoveryImpl) then,
  ) = __$$PressureAndRecoveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int ballRecoveries,
    RecoveryZones recoveryZones,
    Pressing pressing,
    double averageRecoveryTimeSeconds,
  });

  @override
  $RecoveryZonesCopyWith<$Res> get recoveryZones;
  @override
  $PressingCopyWith<$Res> get pressing;
}

/// @nodoc
class __$$PressureAndRecoveryImplCopyWithImpl<$Res>
    extends _$PressureAndRecoveryCopyWithImpl<$Res, _$PressureAndRecoveryImpl>
    implements _$$PressureAndRecoveryImplCopyWith<$Res> {
  __$$PressureAndRecoveryImplCopyWithImpl(
    _$PressureAndRecoveryImpl _value,
    $Res Function(_$PressureAndRecoveryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PressureAndRecovery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ballRecoveries = null,
    Object? recoveryZones = null,
    Object? pressing = null,
    Object? averageRecoveryTimeSeconds = null,
  }) {
    return _then(
      _$PressureAndRecoveryImpl(
        ballRecoveries: null == ballRecoveries
            ? _value.ballRecoveries
            : ballRecoveries // ignore: cast_nullable_to_non_nullable
                  as int,
        recoveryZones: null == recoveryZones
            ? _value.recoveryZones
            : recoveryZones // ignore: cast_nullable_to_non_nullable
                  as RecoveryZones,
        pressing: null == pressing
            ? _value.pressing
            : pressing // ignore: cast_nullable_to_non_nullable
                  as Pressing,
        averageRecoveryTimeSeconds: null == averageRecoveryTimeSeconds
            ? _value.averageRecoveryTimeSeconds
            : averageRecoveryTimeSeconds // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PressureAndRecoveryImpl implements _PressureAndRecovery {
  const _$PressureAndRecoveryImpl({
    this.ballRecoveries = 0,
    this.recoveryZones = const RecoveryZones(),
    this.pressing = const Pressing(),
    this.averageRecoveryTimeSeconds = 0.0,
  });

  factory _$PressureAndRecoveryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PressureAndRecoveryImplFromJson(json);

  @override
  @JsonKey()
  final int ballRecoveries;
  @override
  @JsonKey()
  final RecoveryZones recoveryZones;
  @override
  @JsonKey()
  final Pressing pressing;
  @override
  @JsonKey()
  final double averageRecoveryTimeSeconds;

  @override
  String toString() {
    return 'PressureAndRecovery(ballRecoveries: $ballRecoveries, recoveryZones: $recoveryZones, pressing: $pressing, averageRecoveryTimeSeconds: $averageRecoveryTimeSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PressureAndRecoveryImpl &&
            (identical(other.ballRecoveries, ballRecoveries) ||
                other.ballRecoveries == ballRecoveries) &&
            (identical(other.recoveryZones, recoveryZones) ||
                other.recoveryZones == recoveryZones) &&
            (identical(other.pressing, pressing) ||
                other.pressing == pressing) &&
            (identical(
                  other.averageRecoveryTimeSeconds,
                  averageRecoveryTimeSeconds,
                ) ||
                other.averageRecoveryTimeSeconds ==
                    averageRecoveryTimeSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ballRecoveries,
    recoveryZones,
    pressing,
    averageRecoveryTimeSeconds,
  );

  /// Create a copy of PressureAndRecovery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PressureAndRecoveryImplCopyWith<_$PressureAndRecoveryImpl> get copyWith =>
      __$$PressureAndRecoveryImplCopyWithImpl<_$PressureAndRecoveryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PressureAndRecoveryImplToJson(this);
  }
}

abstract class _PressureAndRecovery implements PressureAndRecovery {
  const factory _PressureAndRecovery({
    final int ballRecoveries,
    final RecoveryZones recoveryZones,
    final Pressing pressing,
    final double averageRecoveryTimeSeconds,
  }) = _$PressureAndRecoveryImpl;

  factory _PressureAndRecovery.fromJson(Map<String, dynamic> json) =
      _$PressureAndRecoveryImpl.fromJson;

  @override
  int get ballRecoveries;
  @override
  RecoveryZones get recoveryZones;
  @override
  Pressing get pressing;
  @override
  double get averageRecoveryTimeSeconds;

  /// Create a copy of PressureAndRecovery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PressureAndRecoveryImplCopyWith<_$PressureAndRecoveryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecoveryZones _$RecoveryZonesFromJson(Map<String, dynamic> json) {
  return _RecoveryZones.fromJson(json);
}

/// @nodoc
mixin _$RecoveryZones {
  int get high => throw _privateConstructorUsedError;
  int get medium => throw _privateConstructorUsedError;
  int get low => throw _privateConstructorUsedError;

  /// Serializes this RecoveryZones to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecoveryZones
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecoveryZonesCopyWith<RecoveryZones> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryZonesCopyWith<$Res> {
  factory $RecoveryZonesCopyWith(
    RecoveryZones value,
    $Res Function(RecoveryZones) then,
  ) = _$RecoveryZonesCopyWithImpl<$Res, RecoveryZones>;
  @useResult
  $Res call({int high, int medium, int low});
}

/// @nodoc
class _$RecoveryZonesCopyWithImpl<$Res, $Val extends RecoveryZones>
    implements $RecoveryZonesCopyWith<$Res> {
  _$RecoveryZonesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecoveryZones
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? high = null, Object? medium = null, Object? low = null}) {
    return _then(
      _value.copyWith(
            high: null == high
                ? _value.high
                : high // ignore: cast_nullable_to_non_nullable
                      as int,
            medium: null == medium
                ? _value.medium
                : medium // ignore: cast_nullable_to_non_nullable
                      as int,
            low: null == low
                ? _value.low
                : low // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecoveryZonesImplCopyWith<$Res>
    implements $RecoveryZonesCopyWith<$Res> {
  factory _$$RecoveryZonesImplCopyWith(
    _$RecoveryZonesImpl value,
    $Res Function(_$RecoveryZonesImpl) then,
  ) = __$$RecoveryZonesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int high, int medium, int low});
}

/// @nodoc
class __$$RecoveryZonesImplCopyWithImpl<$Res>
    extends _$RecoveryZonesCopyWithImpl<$Res, _$RecoveryZonesImpl>
    implements _$$RecoveryZonesImplCopyWith<$Res> {
  __$$RecoveryZonesImplCopyWithImpl(
    _$RecoveryZonesImpl _value,
    $Res Function(_$RecoveryZonesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecoveryZones
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? high = null, Object? medium = null, Object? low = null}) {
    return _then(
      _$RecoveryZonesImpl(
        high: null == high
            ? _value.high
            : high // ignore: cast_nullable_to_non_nullable
                  as int,
        medium: null == medium
            ? _value.medium
            : medium // ignore: cast_nullable_to_non_nullable
                  as int,
        low: null == low
            ? _value.low
            : low // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecoveryZonesImpl implements _RecoveryZones {
  const _$RecoveryZonesImpl({this.high = 0, this.medium = 0, this.low = 0});

  factory _$RecoveryZonesImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecoveryZonesImplFromJson(json);

  @override
  @JsonKey()
  final int high;
  @override
  @JsonKey()
  final int medium;
  @override
  @JsonKey()
  final int low;

  @override
  String toString() {
    return 'RecoveryZones(high: $high, medium: $medium, low: $low)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryZonesImpl &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.low, low) || other.low == low));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, high, medium, low);

  /// Create a copy of RecoveryZones
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoveryZonesImplCopyWith<_$RecoveryZonesImpl> get copyWith =>
      __$$RecoveryZonesImplCopyWithImpl<_$RecoveryZonesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecoveryZonesImplToJson(this);
  }
}

abstract class _RecoveryZones implements RecoveryZones {
  const factory _RecoveryZones({
    final int high,
    final int medium,
    final int low,
  }) = _$RecoveryZonesImpl;

  factory _RecoveryZones.fromJson(Map<String, dynamic> json) =
      _$RecoveryZonesImpl.fromJson;

  @override
  int get high;
  @override
  int get medium;
  @override
  int get low;

  /// Create a copy of RecoveryZones
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoveryZonesImplCopyWith<_$RecoveryZonesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pressing _$PressingFromJson(Map<String, dynamic> json) {
  return _Pressing.fromJson(json);
}

/// @nodoc
mixin _$Pressing {
  int get successful => throw _privateConstructorUsedError;
  int get failed => throw _privateConstructorUsedError;

  /// Serializes this Pressing to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pressing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PressingCopyWith<Pressing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PressingCopyWith<$Res> {
  factory $PressingCopyWith(Pressing value, $Res Function(Pressing) then) =
      _$PressingCopyWithImpl<$Res, Pressing>;
  @useResult
  $Res call({int successful, int failed});
}

/// @nodoc
class _$PressingCopyWithImpl<$Res, $Val extends Pressing>
    implements $PressingCopyWith<$Res> {
  _$PressingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pressing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? successful = null, Object? failed = null}) {
    return _then(
      _value.copyWith(
            successful: null == successful
                ? _value.successful
                : successful // ignore: cast_nullable_to_non_nullable
                      as int,
            failed: null == failed
                ? _value.failed
                : failed // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PressingImplCopyWith<$Res>
    implements $PressingCopyWith<$Res> {
  factory _$$PressingImplCopyWith(
    _$PressingImpl value,
    $Res Function(_$PressingImpl) then,
  ) = __$$PressingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int successful, int failed});
}

/// @nodoc
class __$$PressingImplCopyWithImpl<$Res>
    extends _$PressingCopyWithImpl<$Res, _$PressingImpl>
    implements _$$PressingImplCopyWith<$Res> {
  __$$PressingImplCopyWithImpl(
    _$PressingImpl _value,
    $Res Function(_$PressingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Pressing
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? successful = null, Object? failed = null}) {
    return _then(
      _$PressingImpl(
        successful: null == successful
            ? _value.successful
            : successful // ignore: cast_nullable_to_non_nullable
                  as int,
        failed: null == failed
            ? _value.failed
            : failed // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PressingImpl implements _Pressing {
  const _$PressingImpl({this.successful = 0, this.failed = 0});

  factory _$PressingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PressingImplFromJson(json);

  @override
  @JsonKey()
  final int successful;
  @override
  @JsonKey()
  final int failed;

  @override
  String toString() {
    return 'Pressing(successful: $successful, failed: $failed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PressingImpl &&
            (identical(other.successful, successful) ||
                other.successful == successful) &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, successful, failed);

  /// Create a copy of Pressing
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PressingImplCopyWith<_$PressingImpl> get copyWith =>
      __$$PressingImplCopyWithImpl<_$PressingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PressingImplToJson(this);
  }
}

abstract class _Pressing implements Pressing {
  const factory _Pressing({final int successful, final int failed}) =
      _$PressingImpl;

  factory _Pressing.fromJson(Map<String, dynamic> json) =
      _$PressingImpl.fromJson;

  @override
  int get successful;
  @override
  int get failed;

  /// Create a copy of Pressing
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PressingImplCopyWith<_$PressingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Duels _$DuelsFromJson(Map<String, dynamic> json) {
  return _Duels.fromJson(json);
}

/// @nodoc
mixin _$Duels {
  int get defensiveWon => throw _privateConstructorUsedError;
  int get defensiveLost => throw _privateConstructorUsedError;
  int get successfulTackles => throw _privateConstructorUsedError;
  int get interceptions => throw _privateConstructorUsedError;
  int get shotsBlocked => throw _privateConstructorUsedError;
  int get defensive1v1 => throw _privateConstructorUsedError;

  /// Serializes this Duels to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Duels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DuelsCopyWith<Duels> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DuelsCopyWith<$Res> {
  factory $DuelsCopyWith(Duels value, $Res Function(Duels) then) =
      _$DuelsCopyWithImpl<$Res, Duels>;
  @useResult
  $Res call({
    int defensiveWon,
    int defensiveLost,
    int successfulTackles,
    int interceptions,
    int shotsBlocked,
    int defensive1v1,
  });
}

/// @nodoc
class _$DuelsCopyWithImpl<$Res, $Val extends Duels>
    implements $DuelsCopyWith<$Res> {
  _$DuelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Duels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defensiveWon = null,
    Object? defensiveLost = null,
    Object? successfulTackles = null,
    Object? interceptions = null,
    Object? shotsBlocked = null,
    Object? defensive1v1 = null,
  }) {
    return _then(
      _value.copyWith(
            defensiveWon: null == defensiveWon
                ? _value.defensiveWon
                : defensiveWon // ignore: cast_nullable_to_non_nullable
                      as int,
            defensiveLost: null == defensiveLost
                ? _value.defensiveLost
                : defensiveLost // ignore: cast_nullable_to_non_nullable
                      as int,
            successfulTackles: null == successfulTackles
                ? _value.successfulTackles
                : successfulTackles // ignore: cast_nullable_to_non_nullable
                      as int,
            interceptions: null == interceptions
                ? _value.interceptions
                : interceptions // ignore: cast_nullable_to_non_nullable
                      as int,
            shotsBlocked: null == shotsBlocked
                ? _value.shotsBlocked
                : shotsBlocked // ignore: cast_nullable_to_non_nullable
                      as int,
            defensive1v1: null == defensive1v1
                ? _value.defensive1v1
                : defensive1v1 // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DuelsImplCopyWith<$Res> implements $DuelsCopyWith<$Res> {
  factory _$$DuelsImplCopyWith(
    _$DuelsImpl value,
    $Res Function(_$DuelsImpl) then,
  ) = __$$DuelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int defensiveWon,
    int defensiveLost,
    int successfulTackles,
    int interceptions,
    int shotsBlocked,
    int defensive1v1,
  });
}

/// @nodoc
class __$$DuelsImplCopyWithImpl<$Res>
    extends _$DuelsCopyWithImpl<$Res, _$DuelsImpl>
    implements _$$DuelsImplCopyWith<$Res> {
  __$$DuelsImplCopyWithImpl(
    _$DuelsImpl _value,
    $Res Function(_$DuelsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Duels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defensiveWon = null,
    Object? defensiveLost = null,
    Object? successfulTackles = null,
    Object? interceptions = null,
    Object? shotsBlocked = null,
    Object? defensive1v1 = null,
  }) {
    return _then(
      _$DuelsImpl(
        defensiveWon: null == defensiveWon
            ? _value.defensiveWon
            : defensiveWon // ignore: cast_nullable_to_non_nullable
                  as int,
        defensiveLost: null == defensiveLost
            ? _value.defensiveLost
            : defensiveLost // ignore: cast_nullable_to_non_nullable
                  as int,
        successfulTackles: null == successfulTackles
            ? _value.successfulTackles
            : successfulTackles // ignore: cast_nullable_to_non_nullable
                  as int,
        interceptions: null == interceptions
            ? _value.interceptions
            : interceptions // ignore: cast_nullable_to_non_nullable
                  as int,
        shotsBlocked: null == shotsBlocked
            ? _value.shotsBlocked
            : shotsBlocked // ignore: cast_nullable_to_non_nullable
                  as int,
        defensive1v1: null == defensive1v1
            ? _value.defensive1v1
            : defensive1v1 // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DuelsImpl implements _Duels {
  const _$DuelsImpl({
    this.defensiveWon = 0,
    this.defensiveLost = 0,
    this.successfulTackles = 0,
    this.interceptions = 0,
    this.shotsBlocked = 0,
    this.defensive1v1 = 0,
  });

  factory _$DuelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DuelsImplFromJson(json);

  @override
  @JsonKey()
  final int defensiveWon;
  @override
  @JsonKey()
  final int defensiveLost;
  @override
  @JsonKey()
  final int successfulTackles;
  @override
  @JsonKey()
  final int interceptions;
  @override
  @JsonKey()
  final int shotsBlocked;
  @override
  @JsonKey()
  final int defensive1v1;

  @override
  String toString() {
    return 'Duels(defensiveWon: $defensiveWon, defensiveLost: $defensiveLost, successfulTackles: $successfulTackles, interceptions: $interceptions, shotsBlocked: $shotsBlocked, defensive1v1: $defensive1v1)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DuelsImpl &&
            (identical(other.defensiveWon, defensiveWon) ||
                other.defensiveWon == defensiveWon) &&
            (identical(other.defensiveLost, defensiveLost) ||
                other.defensiveLost == defensiveLost) &&
            (identical(other.successfulTackles, successfulTackles) ||
                other.successfulTackles == successfulTackles) &&
            (identical(other.interceptions, interceptions) ||
                other.interceptions == interceptions) &&
            (identical(other.shotsBlocked, shotsBlocked) ||
                other.shotsBlocked == shotsBlocked) &&
            (identical(other.defensive1v1, defensive1v1) ||
                other.defensive1v1 == defensive1v1));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    defensiveWon,
    defensiveLost,
    successfulTackles,
    interceptions,
    shotsBlocked,
    defensive1v1,
  );

  /// Create a copy of Duels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DuelsImplCopyWith<_$DuelsImpl> get copyWith =>
      __$$DuelsImplCopyWithImpl<_$DuelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DuelsImplToJson(this);
  }
}

abstract class _Duels implements Duels {
  const factory _Duels({
    final int defensiveWon,
    final int defensiveLost,
    final int successfulTackles,
    final int interceptions,
    final int shotsBlocked,
    final int defensive1v1,
  }) = _$DuelsImpl;

  factory _Duels.fromJson(Map<String, dynamic> json) = _$DuelsImpl.fromJson;

  @override
  int get defensiveWon;
  @override
  int get defensiveLost;
  @override
  int get successfulTackles;
  @override
  int get interceptions;
  @override
  int get shotsBlocked;
  @override
  int get defensive1v1;

  /// Create a copy of Duels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DuelsImplCopyWith<_$DuelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Structure _$StructureFromJson(Map<String, dynamic> json) {
  return _Structure.fromJson(json);
}

/// @nodoc
mixin _$Structure {
  String get defensiveLine => throw _privateConstructorUsedError;
  String get compactness => throw _privateConstructorUsedError;
  String get defensiveRotations => throw _privateConstructorUsedError;
  int get criticalErrors => throw _privateConstructorUsedError;

  /// Serializes this Structure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Structure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StructureCopyWith<Structure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StructureCopyWith<$Res> {
  factory $StructureCopyWith(Structure value, $Res Function(Structure) then) =
      _$StructureCopyWithImpl<$Res, Structure>;
  @useResult
  $Res call({
    String defensiveLine,
    String compactness,
    String defensiveRotations,
    int criticalErrors,
  });
}

/// @nodoc
class _$StructureCopyWithImpl<$Res, $Val extends Structure>
    implements $StructureCopyWith<$Res> {
  _$StructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Structure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defensiveLine = null,
    Object? compactness = null,
    Object? defensiveRotations = null,
    Object? criticalErrors = null,
  }) {
    return _then(
      _value.copyWith(
            defensiveLine: null == defensiveLine
                ? _value.defensiveLine
                : defensiveLine // ignore: cast_nullable_to_non_nullable
                      as String,
            compactness: null == compactness
                ? _value.compactness
                : compactness // ignore: cast_nullable_to_non_nullable
                      as String,
            defensiveRotations: null == defensiveRotations
                ? _value.defensiveRotations
                : defensiveRotations // ignore: cast_nullable_to_non_nullable
                      as String,
            criticalErrors: null == criticalErrors
                ? _value.criticalErrors
                : criticalErrors // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StructureImplCopyWith<$Res>
    implements $StructureCopyWith<$Res> {
  factory _$$StructureImplCopyWith(
    _$StructureImpl value,
    $Res Function(_$StructureImpl) then,
  ) = __$$StructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String defensiveLine,
    String compactness,
    String defensiveRotations,
    int criticalErrors,
  });
}

/// @nodoc
class __$$StructureImplCopyWithImpl<$Res>
    extends _$StructureCopyWithImpl<$Res, _$StructureImpl>
    implements _$$StructureImplCopyWith<$Res> {
  __$$StructureImplCopyWithImpl(
    _$StructureImpl _value,
    $Res Function(_$StructureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Structure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defensiveLine = null,
    Object? compactness = null,
    Object? defensiveRotations = null,
    Object? criticalErrors = null,
  }) {
    return _then(
      _$StructureImpl(
        defensiveLine: null == defensiveLine
            ? _value.defensiveLine
            : defensiveLine // ignore: cast_nullable_to_non_nullable
                  as String,
        compactness: null == compactness
            ? _value.compactness
            : compactness // ignore: cast_nullable_to_non_nullable
                  as String,
        defensiveRotations: null == defensiveRotations
            ? _value.defensiveRotations
            : defensiveRotations // ignore: cast_nullable_to_non_nullable
                  as String,
        criticalErrors: null == criticalErrors
            ? _value.criticalErrors
            : criticalErrors // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StructureImpl implements _Structure {
  const _$StructureImpl({
    this.defensiveLine = '',
    this.compactness = '',
    this.defensiveRotations = '',
    this.criticalErrors = 0,
  });

  factory _$StructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$StructureImplFromJson(json);

  @override
  @JsonKey()
  final String defensiveLine;
  @override
  @JsonKey()
  final String compactness;
  @override
  @JsonKey()
  final String defensiveRotations;
  @override
  @JsonKey()
  final int criticalErrors;

  @override
  String toString() {
    return 'Structure(defensiveLine: $defensiveLine, compactness: $compactness, defensiveRotations: $defensiveRotations, criticalErrors: $criticalErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StructureImpl &&
            (identical(other.defensiveLine, defensiveLine) ||
                other.defensiveLine == defensiveLine) &&
            (identical(other.compactness, compactness) ||
                other.compactness == compactness) &&
            (identical(other.defensiveRotations, defensiveRotations) ||
                other.defensiveRotations == defensiveRotations) &&
            (identical(other.criticalErrors, criticalErrors) ||
                other.criticalErrors == criticalErrors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    defensiveLine,
    compactness,
    defensiveRotations,
    criticalErrors,
  );

  /// Create a copy of Structure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StructureImplCopyWith<_$StructureImpl> get copyWith =>
      __$$StructureImplCopyWithImpl<_$StructureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StructureImplToJson(this);
  }
}

abstract class _Structure implements Structure {
  const factory _Structure({
    final String defensiveLine,
    final String compactness,
    final String defensiveRotations,
    final int criticalErrors,
  }) = _$StructureImpl;

  factory _Structure.fromJson(Map<String, dynamic> json) =
      _$StructureImpl.fromJson;

  @override
  String get defensiveLine;
  @override
  String get compactness;
  @override
  String get defensiveRotations;
  @override
  int get criticalErrors;

  /// Create a copy of Structure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StructureImplCopyWith<_$StructureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transitions _$TransitionsFromJson(Map<String, dynamic> json) {
  return _Transitions.fromJson(json);
}

/// @nodoc
mixin _$Transitions {
  OffensiveTransition get offensive => throw _privateConstructorUsedError;
  DefensiveTransition get defensive => throw _privateConstructorUsedError;

  /// Serializes this Transitions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transitions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransitionsCopyWith<Transitions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitionsCopyWith<$Res> {
  factory $TransitionsCopyWith(
    Transitions value,
    $Res Function(Transitions) then,
  ) = _$TransitionsCopyWithImpl<$Res, Transitions>;
  @useResult
  $Res call({OffensiveTransition offensive, DefensiveTransition defensive});

  $OffensiveTransitionCopyWith<$Res> get offensive;
  $DefensiveTransitionCopyWith<$Res> get defensive;
}

/// @nodoc
class _$TransitionsCopyWithImpl<$Res, $Val extends Transitions>
    implements $TransitionsCopyWith<$Res> {
  _$TransitionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transitions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? offensive = null, Object? defensive = null}) {
    return _then(
      _value.copyWith(
            offensive: null == offensive
                ? _value.offensive
                : offensive // ignore: cast_nullable_to_non_nullable
                      as OffensiveTransition,
            defensive: null == defensive
                ? _value.defensive
                : defensive // ignore: cast_nullable_to_non_nullable
                      as DefensiveTransition,
          )
          as $Val,
    );
  }

  /// Create a copy of Transitions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OffensiveTransitionCopyWith<$Res> get offensive {
    return $OffensiveTransitionCopyWith<$Res>(_value.offensive, (value) {
      return _then(_value.copyWith(offensive: value) as $Val);
    });
  }

  /// Create a copy of Transitions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DefensiveTransitionCopyWith<$Res> get defensive {
    return $DefensiveTransitionCopyWith<$Res>(_value.defensive, (value) {
      return _then(_value.copyWith(defensive: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransitionsImplCopyWith<$Res>
    implements $TransitionsCopyWith<$Res> {
  factory _$$TransitionsImplCopyWith(
    _$TransitionsImpl value,
    $Res Function(_$TransitionsImpl) then,
  ) = __$$TransitionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OffensiveTransition offensive, DefensiveTransition defensive});

  @override
  $OffensiveTransitionCopyWith<$Res> get offensive;
  @override
  $DefensiveTransitionCopyWith<$Res> get defensive;
}

/// @nodoc
class __$$TransitionsImplCopyWithImpl<$Res>
    extends _$TransitionsCopyWithImpl<$Res, _$TransitionsImpl>
    implements _$$TransitionsImplCopyWith<$Res> {
  __$$TransitionsImplCopyWithImpl(
    _$TransitionsImpl _value,
    $Res Function(_$TransitionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Transitions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? offensive = null, Object? defensive = null}) {
    return _then(
      _$TransitionsImpl(
        offensive: null == offensive
            ? _value.offensive
            : offensive // ignore: cast_nullable_to_non_nullable
                  as OffensiveTransition,
        defensive: null == defensive
            ? _value.defensive
            : defensive // ignore: cast_nullable_to_non_nullable
                  as DefensiveTransition,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransitionsImpl implements _Transitions {
  const _$TransitionsImpl({
    this.offensive = const OffensiveTransition(),
    this.defensive = const DefensiveTransition(),
  });

  factory _$TransitionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransitionsImplFromJson(json);

  @override
  @JsonKey()
  final OffensiveTransition offensive;
  @override
  @JsonKey()
  final DefensiveTransition defensive;

  @override
  String toString() {
    return 'Transitions(offensive: $offensive, defensive: $defensive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransitionsImpl &&
            (identical(other.offensive, offensive) ||
                other.offensive == offensive) &&
            (identical(other.defensive, defensive) ||
                other.defensive == defensive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offensive, defensive);

  /// Create a copy of Transitions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransitionsImplCopyWith<_$TransitionsImpl> get copyWith =>
      __$$TransitionsImplCopyWithImpl<_$TransitionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransitionsImplToJson(this);
  }
}

abstract class _Transitions implements Transitions {
  const factory _Transitions({
    final OffensiveTransition offensive,
    final DefensiveTransition defensive,
  }) = _$TransitionsImpl;

  factory _Transitions.fromJson(Map<String, dynamic> json) =
      _$TransitionsImpl.fromJson;

  @override
  OffensiveTransition get offensive;
  @override
  DefensiveTransition get defensive;

  /// Create a copy of Transitions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransitionsImplCopyWith<_$TransitionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OffensiveTransition _$OffensiveTransitionFromJson(Map<String, dynamic> json) {
  return _OffensiveTransition.fromJson(json);
}

/// @nodoc
mixin _$OffensiveTransition {
  int get counterAttacks => throw _privateConstructorUsedError;
  String get developmentSpeed => throw _privateConstructorUsedError;
  TransitionOutcomes get outcomes => throw _privateConstructorUsedError;

  /// Serializes this OffensiveTransition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OffensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffensiveTransitionCopyWith<OffensiveTransition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffensiveTransitionCopyWith<$Res> {
  factory $OffensiveTransitionCopyWith(
    OffensiveTransition value,
    $Res Function(OffensiveTransition) then,
  ) = _$OffensiveTransitionCopyWithImpl<$Res, OffensiveTransition>;
  @useResult
  $Res call({
    int counterAttacks,
    String developmentSpeed,
    TransitionOutcomes outcomes,
  });

  $TransitionOutcomesCopyWith<$Res> get outcomes;
}

/// @nodoc
class _$OffensiveTransitionCopyWithImpl<$Res, $Val extends OffensiveTransition>
    implements $OffensiveTransitionCopyWith<$Res> {
  _$OffensiveTransitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OffensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterAttacks = null,
    Object? developmentSpeed = null,
    Object? outcomes = null,
  }) {
    return _then(
      _value.copyWith(
            counterAttacks: null == counterAttacks
                ? _value.counterAttacks
                : counterAttacks // ignore: cast_nullable_to_non_nullable
                      as int,
            developmentSpeed: null == developmentSpeed
                ? _value.developmentSpeed
                : developmentSpeed // ignore: cast_nullable_to_non_nullable
                      as String,
            outcomes: null == outcomes
                ? _value.outcomes
                : outcomes // ignore: cast_nullable_to_non_nullable
                      as TransitionOutcomes,
          )
          as $Val,
    );
  }

  /// Create a copy of OffensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransitionOutcomesCopyWith<$Res> get outcomes {
    return $TransitionOutcomesCopyWith<$Res>(_value.outcomes, (value) {
      return _then(_value.copyWith(outcomes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OffensiveTransitionImplCopyWith<$Res>
    implements $OffensiveTransitionCopyWith<$Res> {
  factory _$$OffensiveTransitionImplCopyWith(
    _$OffensiveTransitionImpl value,
    $Res Function(_$OffensiveTransitionImpl) then,
  ) = __$$OffensiveTransitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int counterAttacks,
    String developmentSpeed,
    TransitionOutcomes outcomes,
  });

  @override
  $TransitionOutcomesCopyWith<$Res> get outcomes;
}

/// @nodoc
class __$$OffensiveTransitionImplCopyWithImpl<$Res>
    extends _$OffensiveTransitionCopyWithImpl<$Res, _$OffensiveTransitionImpl>
    implements _$$OffensiveTransitionImplCopyWith<$Res> {
  __$$OffensiveTransitionImplCopyWithImpl(
    _$OffensiveTransitionImpl _value,
    $Res Function(_$OffensiveTransitionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OffensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterAttacks = null,
    Object? developmentSpeed = null,
    Object? outcomes = null,
  }) {
    return _then(
      _$OffensiveTransitionImpl(
        counterAttacks: null == counterAttacks
            ? _value.counterAttacks
            : counterAttacks // ignore: cast_nullable_to_non_nullable
                  as int,
        developmentSpeed: null == developmentSpeed
            ? _value.developmentSpeed
            : developmentSpeed // ignore: cast_nullable_to_non_nullable
                  as String,
        outcomes: null == outcomes
            ? _value.outcomes
            : outcomes // ignore: cast_nullable_to_non_nullable
                  as TransitionOutcomes,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OffensiveTransitionImpl implements _OffensiveTransition {
  const _$OffensiveTransitionImpl({
    this.counterAttacks = 0,
    this.developmentSpeed = '',
    this.outcomes = const TransitionOutcomes(),
  });

  factory _$OffensiveTransitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffensiveTransitionImplFromJson(json);

  @override
  @JsonKey()
  final int counterAttacks;
  @override
  @JsonKey()
  final String developmentSpeed;
  @override
  @JsonKey()
  final TransitionOutcomes outcomes;

  @override
  String toString() {
    return 'OffensiveTransition(counterAttacks: $counterAttacks, developmentSpeed: $developmentSpeed, outcomes: $outcomes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffensiveTransitionImpl &&
            (identical(other.counterAttacks, counterAttacks) ||
                other.counterAttacks == counterAttacks) &&
            (identical(other.developmentSpeed, developmentSpeed) ||
                other.developmentSpeed == developmentSpeed) &&
            (identical(other.outcomes, outcomes) ||
                other.outcomes == outcomes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, counterAttacks, developmentSpeed, outcomes);

  /// Create a copy of OffensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffensiveTransitionImplCopyWith<_$OffensiveTransitionImpl> get copyWith =>
      __$$OffensiveTransitionImplCopyWithImpl<_$OffensiveTransitionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$OffensiveTransitionImplToJson(this);
  }
}

abstract class _OffensiveTransition implements OffensiveTransition {
  const factory _OffensiveTransition({
    final int counterAttacks,
    final String developmentSpeed,
    final TransitionOutcomes outcomes,
  }) = _$OffensiveTransitionImpl;

  factory _OffensiveTransition.fromJson(Map<String, dynamic> json) =
      _$OffensiveTransitionImpl.fromJson;

  @override
  int get counterAttacks;
  @override
  String get developmentSpeed;
  @override
  TransitionOutcomes get outcomes;

  /// Create a copy of OffensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffensiveTransitionImplCopyWith<_$OffensiveTransitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransitionOutcomes _$TransitionOutcomesFromJson(Map<String, dynamic> json) {
  return _TransitionOutcomes.fromJson(json);
}

/// @nodoc
mixin _$TransitionOutcomes {
  int get shots => throw _privateConstructorUsedError;
  int get goals => throw _privateConstructorUsedError;
  int get lostBalls => throw _privateConstructorUsedError;

  /// Serializes this TransitionOutcomes to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransitionOutcomes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransitionOutcomesCopyWith<TransitionOutcomes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitionOutcomesCopyWith<$Res> {
  factory $TransitionOutcomesCopyWith(
    TransitionOutcomes value,
    $Res Function(TransitionOutcomes) then,
  ) = _$TransitionOutcomesCopyWithImpl<$Res, TransitionOutcomes>;
  @useResult
  $Res call({int shots, int goals, int lostBalls});
}

/// @nodoc
class _$TransitionOutcomesCopyWithImpl<$Res, $Val extends TransitionOutcomes>
    implements $TransitionOutcomesCopyWith<$Res> {
  _$TransitionOutcomesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransitionOutcomes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shots = null,
    Object? goals = null,
    Object? lostBalls = null,
  }) {
    return _then(
      _value.copyWith(
            shots: null == shots
                ? _value.shots
                : shots // ignore: cast_nullable_to_non_nullable
                      as int,
            goals: null == goals
                ? _value.goals
                : goals // ignore: cast_nullable_to_non_nullable
                      as int,
            lostBalls: null == lostBalls
                ? _value.lostBalls
                : lostBalls // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TransitionOutcomesImplCopyWith<$Res>
    implements $TransitionOutcomesCopyWith<$Res> {
  factory _$$TransitionOutcomesImplCopyWith(
    _$TransitionOutcomesImpl value,
    $Res Function(_$TransitionOutcomesImpl) then,
  ) = __$$TransitionOutcomesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int shots, int goals, int lostBalls});
}

/// @nodoc
class __$$TransitionOutcomesImplCopyWithImpl<$Res>
    extends _$TransitionOutcomesCopyWithImpl<$Res, _$TransitionOutcomesImpl>
    implements _$$TransitionOutcomesImplCopyWith<$Res> {
  __$$TransitionOutcomesImplCopyWithImpl(
    _$TransitionOutcomesImpl _value,
    $Res Function(_$TransitionOutcomesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransitionOutcomes
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shots = null,
    Object? goals = null,
    Object? lostBalls = null,
  }) {
    return _then(
      _$TransitionOutcomesImpl(
        shots: null == shots
            ? _value.shots
            : shots // ignore: cast_nullable_to_non_nullable
                  as int,
        goals: null == goals
            ? _value.goals
            : goals // ignore: cast_nullable_to_non_nullable
                  as int,
        lostBalls: null == lostBalls
            ? _value.lostBalls
            : lostBalls // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransitionOutcomesImpl implements _TransitionOutcomes {
  const _$TransitionOutcomesImpl({
    this.shots = 0,
    this.goals = 0,
    this.lostBalls = 0,
  });

  factory _$TransitionOutcomesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransitionOutcomesImplFromJson(json);

  @override
  @JsonKey()
  final int shots;
  @override
  @JsonKey()
  final int goals;
  @override
  @JsonKey()
  final int lostBalls;

  @override
  String toString() {
    return 'TransitionOutcomes(shots: $shots, goals: $goals, lostBalls: $lostBalls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransitionOutcomesImpl &&
            (identical(other.shots, shots) || other.shots == shots) &&
            (identical(other.goals, goals) || other.goals == goals) &&
            (identical(other.lostBalls, lostBalls) ||
                other.lostBalls == lostBalls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shots, goals, lostBalls);

  /// Create a copy of TransitionOutcomes
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransitionOutcomesImplCopyWith<_$TransitionOutcomesImpl> get copyWith =>
      __$$TransitionOutcomesImplCopyWithImpl<_$TransitionOutcomesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TransitionOutcomesImplToJson(this);
  }
}

abstract class _TransitionOutcomes implements TransitionOutcomes {
  const factory _TransitionOutcomes({
    final int shots,
    final int goals,
    final int lostBalls,
  }) = _$TransitionOutcomesImpl;

  factory _TransitionOutcomes.fromJson(Map<String, dynamic> json) =
      _$TransitionOutcomesImpl.fromJson;

  @override
  int get shots;
  @override
  int get goals;
  @override
  int get lostBalls;

  /// Create a copy of TransitionOutcomes
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransitionOutcomesImplCopyWith<_$TransitionOutcomesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DefensiveTransition _$DefensiveTransitionFromJson(Map<String, dynamic> json) {
  return _DefensiveTransition.fromJson(json);
}

/// @nodoc
mixin _$DefensiveTransition {
  double get recoveryTimeSeconds => throw _privateConstructorUsedError;
  int get tacticalFouls => throw _privateConstructorUsedError;
  int get goalsConcededInTransition => throw _privateConstructorUsedError;

  /// Serializes this DefensiveTransition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DefensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefensiveTransitionCopyWith<DefensiveTransition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefensiveTransitionCopyWith<$Res> {
  factory $DefensiveTransitionCopyWith(
    DefensiveTransition value,
    $Res Function(DefensiveTransition) then,
  ) = _$DefensiveTransitionCopyWithImpl<$Res, DefensiveTransition>;
  @useResult
  $Res call({
    double recoveryTimeSeconds,
    int tacticalFouls,
    int goalsConcededInTransition,
  });
}

/// @nodoc
class _$DefensiveTransitionCopyWithImpl<$Res, $Val extends DefensiveTransition>
    implements $DefensiveTransitionCopyWith<$Res> {
  _$DefensiveTransitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recoveryTimeSeconds = null,
    Object? tacticalFouls = null,
    Object? goalsConcededInTransition = null,
  }) {
    return _then(
      _value.copyWith(
            recoveryTimeSeconds: null == recoveryTimeSeconds
                ? _value.recoveryTimeSeconds
                : recoveryTimeSeconds // ignore: cast_nullable_to_non_nullable
                      as double,
            tacticalFouls: null == tacticalFouls
                ? _value.tacticalFouls
                : tacticalFouls // ignore: cast_nullable_to_non_nullable
                      as int,
            goalsConcededInTransition: null == goalsConcededInTransition
                ? _value.goalsConcededInTransition
                : goalsConcededInTransition // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DefensiveTransitionImplCopyWith<$Res>
    implements $DefensiveTransitionCopyWith<$Res> {
  factory _$$DefensiveTransitionImplCopyWith(
    _$DefensiveTransitionImpl value,
    $Res Function(_$DefensiveTransitionImpl) then,
  ) = __$$DefensiveTransitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double recoveryTimeSeconds,
    int tacticalFouls,
    int goalsConcededInTransition,
  });
}

/// @nodoc
class __$$DefensiveTransitionImplCopyWithImpl<$Res>
    extends _$DefensiveTransitionCopyWithImpl<$Res, _$DefensiveTransitionImpl>
    implements _$$DefensiveTransitionImplCopyWith<$Res> {
  __$$DefensiveTransitionImplCopyWithImpl(
    _$DefensiveTransitionImpl _value,
    $Res Function(_$DefensiveTransitionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DefensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recoveryTimeSeconds = null,
    Object? tacticalFouls = null,
    Object? goalsConcededInTransition = null,
  }) {
    return _then(
      _$DefensiveTransitionImpl(
        recoveryTimeSeconds: null == recoveryTimeSeconds
            ? _value.recoveryTimeSeconds
            : recoveryTimeSeconds // ignore: cast_nullable_to_non_nullable
                  as double,
        tacticalFouls: null == tacticalFouls
            ? _value.tacticalFouls
            : tacticalFouls // ignore: cast_nullable_to_non_nullable
                  as int,
        goalsConcededInTransition: null == goalsConcededInTransition
            ? _value.goalsConcededInTransition
            : goalsConcededInTransition // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DefensiveTransitionImpl implements _DefensiveTransition {
  const _$DefensiveTransitionImpl({
    this.recoveryTimeSeconds = 0.0,
    this.tacticalFouls = 0,
    this.goalsConcededInTransition = 0,
  });

  factory _$DefensiveTransitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefensiveTransitionImplFromJson(json);

  @override
  @JsonKey()
  final double recoveryTimeSeconds;
  @override
  @JsonKey()
  final int tacticalFouls;
  @override
  @JsonKey()
  final int goalsConcededInTransition;

  @override
  String toString() {
    return 'DefensiveTransition(recoveryTimeSeconds: $recoveryTimeSeconds, tacticalFouls: $tacticalFouls, goalsConcededInTransition: $goalsConcededInTransition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefensiveTransitionImpl &&
            (identical(other.recoveryTimeSeconds, recoveryTimeSeconds) ||
                other.recoveryTimeSeconds == recoveryTimeSeconds) &&
            (identical(other.tacticalFouls, tacticalFouls) ||
                other.tacticalFouls == tacticalFouls) &&
            (identical(
                  other.goalsConcededInTransition,
                  goalsConcededInTransition,
                ) ||
                other.goalsConcededInTransition == goalsConcededInTransition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    recoveryTimeSeconds,
    tacticalFouls,
    goalsConcededInTransition,
  );

  /// Create a copy of DefensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefensiveTransitionImplCopyWith<_$DefensiveTransitionImpl> get copyWith =>
      __$$DefensiveTransitionImplCopyWithImpl<_$DefensiveTransitionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DefensiveTransitionImplToJson(this);
  }
}

abstract class _DefensiveTransition implements DefensiveTransition {
  const factory _DefensiveTransition({
    final double recoveryTimeSeconds,
    final int tacticalFouls,
    final int goalsConcededInTransition,
  }) = _$DefensiveTransitionImpl;

  factory _DefensiveTransition.fromJson(Map<String, dynamic> json) =
      _$DefensiveTransitionImpl.fromJson;

  @override
  double get recoveryTimeSeconds;
  @override
  int get tacticalFouls;
  @override
  int get goalsConcededInTransition;

  /// Create a copy of DefensiveTransition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefensiveTransitionImplCopyWith<_$DefensiveTransitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerAnalysis _$PlayerAnalysisFromJson(Map<String, dynamic> json) {
  return _PlayerAnalysis.fromJson(json);
}

/// @nodoc
mixin _$PlayerAnalysis {
  String get name => throw _privateConstructorUsedError;
  PlayerTechnical get technical => throw _privateConstructorUsedError;
  PlayerTactical get tactical => throw _privateConstructorUsedError;
  PlayerEfficiency get efficiency => throw _privateConstructorUsedError;

  /// Serializes this PlayerAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerAnalysisCopyWith<PlayerAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerAnalysisCopyWith<$Res> {
  factory $PlayerAnalysisCopyWith(
    PlayerAnalysis value,
    $Res Function(PlayerAnalysis) then,
  ) = _$PlayerAnalysisCopyWithImpl<$Res, PlayerAnalysis>;
  @useResult
  $Res call({
    String name,
    PlayerTechnical technical,
    PlayerTactical tactical,
    PlayerEfficiency efficiency,
  });

  $PlayerTechnicalCopyWith<$Res> get technical;
  $PlayerTacticalCopyWith<$Res> get tactical;
  $PlayerEfficiencyCopyWith<$Res> get efficiency;
}

/// @nodoc
class _$PlayerAnalysisCopyWithImpl<$Res, $Val extends PlayerAnalysis>
    implements $PlayerAnalysisCopyWith<$Res> {
  _$PlayerAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? technical = null,
    Object? tactical = null,
    Object? efficiency = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            technical: null == technical
                ? _value.technical
                : technical // ignore: cast_nullable_to_non_nullable
                      as PlayerTechnical,
            tactical: null == tactical
                ? _value.tactical
                : tactical // ignore: cast_nullable_to_non_nullable
                      as PlayerTactical,
            efficiency: null == efficiency
                ? _value.efficiency
                : efficiency // ignore: cast_nullable_to_non_nullable
                      as PlayerEfficiency,
          )
          as $Val,
    );
  }

  /// Create a copy of PlayerAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerTechnicalCopyWith<$Res> get technical {
    return $PlayerTechnicalCopyWith<$Res>(_value.technical, (value) {
      return _then(_value.copyWith(technical: value) as $Val);
    });
  }

  /// Create a copy of PlayerAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerTacticalCopyWith<$Res> get tactical {
    return $PlayerTacticalCopyWith<$Res>(_value.tactical, (value) {
      return _then(_value.copyWith(tactical: value) as $Val);
    });
  }

  /// Create a copy of PlayerAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlayerEfficiencyCopyWith<$Res> get efficiency {
    return $PlayerEfficiencyCopyWith<$Res>(_value.efficiency, (value) {
      return _then(_value.copyWith(efficiency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerAnalysisImplCopyWith<$Res>
    implements $PlayerAnalysisCopyWith<$Res> {
  factory _$$PlayerAnalysisImplCopyWith(
    _$PlayerAnalysisImpl value,
    $Res Function(_$PlayerAnalysisImpl) then,
  ) = __$$PlayerAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    PlayerTechnical technical,
    PlayerTactical tactical,
    PlayerEfficiency efficiency,
  });

  @override
  $PlayerTechnicalCopyWith<$Res> get technical;
  @override
  $PlayerTacticalCopyWith<$Res> get tactical;
  @override
  $PlayerEfficiencyCopyWith<$Res> get efficiency;
}

/// @nodoc
class __$$PlayerAnalysisImplCopyWithImpl<$Res>
    extends _$PlayerAnalysisCopyWithImpl<$Res, _$PlayerAnalysisImpl>
    implements _$$PlayerAnalysisImplCopyWith<$Res> {
  __$$PlayerAnalysisImplCopyWithImpl(
    _$PlayerAnalysisImpl _value,
    $Res Function(_$PlayerAnalysisImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? technical = null,
    Object? tactical = null,
    Object? efficiency = null,
  }) {
    return _then(
      _$PlayerAnalysisImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        technical: null == technical
            ? _value.technical
            : technical // ignore: cast_nullable_to_non_nullable
                  as PlayerTechnical,
        tactical: null == tactical
            ? _value.tactical
            : tactical // ignore: cast_nullable_to_non_nullable
                  as PlayerTactical,
        efficiency: null == efficiency
            ? _value.efficiency
            : efficiency // ignore: cast_nullable_to_non_nullable
                  as PlayerEfficiency,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerAnalysisImpl implements _PlayerAnalysis {
  const _$PlayerAnalysisImpl({
    this.name = '',
    this.technical = const PlayerTechnical(),
    this.tactical = const PlayerTactical(),
    this.efficiency = const PlayerEfficiency(),
  });

  factory _$PlayerAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerAnalysisImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final PlayerTechnical technical;
  @override
  @JsonKey()
  final PlayerTactical tactical;
  @override
  @JsonKey()
  final PlayerEfficiency efficiency;

  @override
  String toString() {
    return 'PlayerAnalysis(name: $name, technical: $technical, tactical: $tactical, efficiency: $efficiency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerAnalysisImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.technical, technical) ||
                other.technical == technical) &&
            (identical(other.tactical, tactical) ||
                other.tactical == tactical) &&
            (identical(other.efficiency, efficiency) ||
                other.efficiency == efficiency));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, technical, tactical, efficiency);

  /// Create a copy of PlayerAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerAnalysisImplCopyWith<_$PlayerAnalysisImpl> get copyWith =>
      __$$PlayerAnalysisImplCopyWithImpl<_$PlayerAnalysisImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerAnalysisImplToJson(this);
  }
}

abstract class _PlayerAnalysis implements PlayerAnalysis {
  const factory _PlayerAnalysis({
    final String name,
    final PlayerTechnical technical,
    final PlayerTactical tactical,
    final PlayerEfficiency efficiency,
  }) = _$PlayerAnalysisImpl;

  factory _PlayerAnalysis.fromJson(Map<String, dynamic> json) =
      _$PlayerAnalysisImpl.fromJson;

  @override
  String get name;
  @override
  PlayerTechnical get technical;
  @override
  PlayerTactical get tactical;
  @override
  PlayerEfficiency get efficiency;

  /// Create a copy of PlayerAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerAnalysisImplCopyWith<_$PlayerAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerTechnical _$PlayerTechnicalFromJson(Map<String, dynamic> json) {
  return _PlayerTechnical.fromJson(json);
}

/// @nodoc
mixin _$PlayerTechnical {
  int get touches => throw _privateConstructorUsedError;
  int get successfulPasses => throw _privateConstructorUsedError;
  int get dribbles => throw _privateConstructorUsedError;
  int get shots => throw _privateConstructorUsedError;
  int get possessionLost => throw _privateConstructorUsedError;

  /// Serializes this PlayerTechnical to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerTechnical
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerTechnicalCopyWith<PlayerTechnical> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerTechnicalCopyWith<$Res> {
  factory $PlayerTechnicalCopyWith(
    PlayerTechnical value,
    $Res Function(PlayerTechnical) then,
  ) = _$PlayerTechnicalCopyWithImpl<$Res, PlayerTechnical>;
  @useResult
  $Res call({
    int touches,
    int successfulPasses,
    int dribbles,
    int shots,
    int possessionLost,
  });
}

/// @nodoc
class _$PlayerTechnicalCopyWithImpl<$Res, $Val extends PlayerTechnical>
    implements $PlayerTechnicalCopyWith<$Res> {
  _$PlayerTechnicalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerTechnical
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? touches = null,
    Object? successfulPasses = null,
    Object? dribbles = null,
    Object? shots = null,
    Object? possessionLost = null,
  }) {
    return _then(
      _value.copyWith(
            touches: null == touches
                ? _value.touches
                : touches // ignore: cast_nullable_to_non_nullable
                      as int,
            successfulPasses: null == successfulPasses
                ? _value.successfulPasses
                : successfulPasses // ignore: cast_nullable_to_non_nullable
                      as int,
            dribbles: null == dribbles
                ? _value.dribbles
                : dribbles // ignore: cast_nullable_to_non_nullable
                      as int,
            shots: null == shots
                ? _value.shots
                : shots // ignore: cast_nullable_to_non_nullable
                      as int,
            possessionLost: null == possessionLost
                ? _value.possessionLost
                : possessionLost // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlayerTechnicalImplCopyWith<$Res>
    implements $PlayerTechnicalCopyWith<$Res> {
  factory _$$PlayerTechnicalImplCopyWith(
    _$PlayerTechnicalImpl value,
    $Res Function(_$PlayerTechnicalImpl) then,
  ) = __$$PlayerTechnicalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int touches,
    int successfulPasses,
    int dribbles,
    int shots,
    int possessionLost,
  });
}

/// @nodoc
class __$$PlayerTechnicalImplCopyWithImpl<$Res>
    extends _$PlayerTechnicalCopyWithImpl<$Res, _$PlayerTechnicalImpl>
    implements _$$PlayerTechnicalImplCopyWith<$Res> {
  __$$PlayerTechnicalImplCopyWithImpl(
    _$PlayerTechnicalImpl _value,
    $Res Function(_$PlayerTechnicalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerTechnical
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? touches = null,
    Object? successfulPasses = null,
    Object? dribbles = null,
    Object? shots = null,
    Object? possessionLost = null,
  }) {
    return _then(
      _$PlayerTechnicalImpl(
        touches: null == touches
            ? _value.touches
            : touches // ignore: cast_nullable_to_non_nullable
                  as int,
        successfulPasses: null == successfulPasses
            ? _value.successfulPasses
            : successfulPasses // ignore: cast_nullable_to_non_nullable
                  as int,
        dribbles: null == dribbles
            ? _value.dribbles
            : dribbles // ignore: cast_nullable_to_non_nullable
                  as int,
        shots: null == shots
            ? _value.shots
            : shots // ignore: cast_nullable_to_non_nullable
                  as int,
        possessionLost: null == possessionLost
            ? _value.possessionLost
            : possessionLost // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerTechnicalImpl implements _PlayerTechnical {
  const _$PlayerTechnicalImpl({
    this.touches = 0,
    this.successfulPasses = 0,
    this.dribbles = 0,
    this.shots = 0,
    this.possessionLost = 0,
  });

  factory _$PlayerTechnicalImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerTechnicalImplFromJson(json);

  @override
  @JsonKey()
  final int touches;
  @override
  @JsonKey()
  final int successfulPasses;
  @override
  @JsonKey()
  final int dribbles;
  @override
  @JsonKey()
  final int shots;
  @override
  @JsonKey()
  final int possessionLost;

  @override
  String toString() {
    return 'PlayerTechnical(touches: $touches, successfulPasses: $successfulPasses, dribbles: $dribbles, shots: $shots, possessionLost: $possessionLost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerTechnicalImpl &&
            (identical(other.touches, touches) || other.touches == touches) &&
            (identical(other.successfulPasses, successfulPasses) ||
                other.successfulPasses == successfulPasses) &&
            (identical(other.dribbles, dribbles) ||
                other.dribbles == dribbles) &&
            (identical(other.shots, shots) || other.shots == shots) &&
            (identical(other.possessionLost, possessionLost) ||
                other.possessionLost == possessionLost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    touches,
    successfulPasses,
    dribbles,
    shots,
    possessionLost,
  );

  /// Create a copy of PlayerTechnical
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerTechnicalImplCopyWith<_$PlayerTechnicalImpl> get copyWith =>
      __$$PlayerTechnicalImplCopyWithImpl<_$PlayerTechnicalImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerTechnicalImplToJson(this);
  }
}

abstract class _PlayerTechnical implements PlayerTechnical {
  const factory _PlayerTechnical({
    final int touches,
    final int successfulPasses,
    final int dribbles,
    final int shots,
    final int possessionLost,
  }) = _$PlayerTechnicalImpl;

  factory _PlayerTechnical.fromJson(Map<String, dynamic> json) =
      _$PlayerTechnicalImpl.fromJson;

  @override
  int get touches;
  @override
  int get successfulPasses;
  @override
  int get dribbles;
  @override
  int get shots;
  @override
  int get possessionLost;

  /// Create a copy of PlayerTechnical
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerTechnicalImplCopyWith<_$PlayerTechnicalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerTactical _$PlayerTacticalFromJson(Map<String, dynamic> json) {
  return _PlayerTactical.fromJson(json);
}

/// @nodoc
mixin _$PlayerTactical {
  String get averagePosition => throw _privateConstructorUsedError;
  List<String> get zonesOccupied => throw _privateConstructorUsedError;
  String get offBallMovements => throw _privateConstructorUsedError;
  List<String> get teammateConnections => throw _privateConstructorUsedError;

  /// Serializes this PlayerTactical to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerTactical
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerTacticalCopyWith<PlayerTactical> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerTacticalCopyWith<$Res> {
  factory $PlayerTacticalCopyWith(
    PlayerTactical value,
    $Res Function(PlayerTactical) then,
  ) = _$PlayerTacticalCopyWithImpl<$Res, PlayerTactical>;
  @useResult
  $Res call({
    String averagePosition,
    List<String> zonesOccupied,
    String offBallMovements,
    List<String> teammateConnections,
  });
}

/// @nodoc
class _$PlayerTacticalCopyWithImpl<$Res, $Val extends PlayerTactical>
    implements $PlayerTacticalCopyWith<$Res> {
  _$PlayerTacticalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerTactical
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averagePosition = null,
    Object? zonesOccupied = null,
    Object? offBallMovements = null,
    Object? teammateConnections = null,
  }) {
    return _then(
      _value.copyWith(
            averagePosition: null == averagePosition
                ? _value.averagePosition
                : averagePosition // ignore: cast_nullable_to_non_nullable
                      as String,
            zonesOccupied: null == zonesOccupied
                ? _value.zonesOccupied
                : zonesOccupied // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            offBallMovements: null == offBallMovements
                ? _value.offBallMovements
                : offBallMovements // ignore: cast_nullable_to_non_nullable
                      as String,
            teammateConnections: null == teammateConnections
                ? _value.teammateConnections
                : teammateConnections // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlayerTacticalImplCopyWith<$Res>
    implements $PlayerTacticalCopyWith<$Res> {
  factory _$$PlayerTacticalImplCopyWith(
    _$PlayerTacticalImpl value,
    $Res Function(_$PlayerTacticalImpl) then,
  ) = __$$PlayerTacticalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String averagePosition,
    List<String> zonesOccupied,
    String offBallMovements,
    List<String> teammateConnections,
  });
}

/// @nodoc
class __$$PlayerTacticalImplCopyWithImpl<$Res>
    extends _$PlayerTacticalCopyWithImpl<$Res, _$PlayerTacticalImpl>
    implements _$$PlayerTacticalImplCopyWith<$Res> {
  __$$PlayerTacticalImplCopyWithImpl(
    _$PlayerTacticalImpl _value,
    $Res Function(_$PlayerTacticalImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerTactical
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averagePosition = null,
    Object? zonesOccupied = null,
    Object? offBallMovements = null,
    Object? teammateConnections = null,
  }) {
    return _then(
      _$PlayerTacticalImpl(
        averagePosition: null == averagePosition
            ? _value.averagePosition
            : averagePosition // ignore: cast_nullable_to_non_nullable
                  as String,
        zonesOccupied: null == zonesOccupied
            ? _value._zonesOccupied
            : zonesOccupied // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        offBallMovements: null == offBallMovements
            ? _value.offBallMovements
            : offBallMovements // ignore: cast_nullable_to_non_nullable
                  as String,
        teammateConnections: null == teammateConnections
            ? _value._teammateConnections
            : teammateConnections // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerTacticalImpl implements _PlayerTactical {
  const _$PlayerTacticalImpl({
    this.averagePosition = '',
    final List<String> zonesOccupied = const [],
    this.offBallMovements = '',
    final List<String> teammateConnections = const [],
  }) : _zonesOccupied = zonesOccupied,
       _teammateConnections = teammateConnections;

  factory _$PlayerTacticalImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerTacticalImplFromJson(json);

  @override
  @JsonKey()
  final String averagePosition;
  final List<String> _zonesOccupied;
  @override
  @JsonKey()
  List<String> get zonesOccupied {
    if (_zonesOccupied is EqualUnmodifiableListView) return _zonesOccupied;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_zonesOccupied);
  }

  @override
  @JsonKey()
  final String offBallMovements;
  final List<String> _teammateConnections;
  @override
  @JsonKey()
  List<String> get teammateConnections {
    if (_teammateConnections is EqualUnmodifiableListView)
      return _teammateConnections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teammateConnections);
  }

  @override
  String toString() {
    return 'PlayerTactical(averagePosition: $averagePosition, zonesOccupied: $zonesOccupied, offBallMovements: $offBallMovements, teammateConnections: $teammateConnections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerTacticalImpl &&
            (identical(other.averagePosition, averagePosition) ||
                other.averagePosition == averagePosition) &&
            const DeepCollectionEquality().equals(
              other._zonesOccupied,
              _zonesOccupied,
            ) &&
            (identical(other.offBallMovements, offBallMovements) ||
                other.offBallMovements == offBallMovements) &&
            const DeepCollectionEquality().equals(
              other._teammateConnections,
              _teammateConnections,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    averagePosition,
    const DeepCollectionEquality().hash(_zonesOccupied),
    offBallMovements,
    const DeepCollectionEquality().hash(_teammateConnections),
  );

  /// Create a copy of PlayerTactical
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerTacticalImplCopyWith<_$PlayerTacticalImpl> get copyWith =>
      __$$PlayerTacticalImplCopyWithImpl<_$PlayerTacticalImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerTacticalImplToJson(this);
  }
}

abstract class _PlayerTactical implements PlayerTactical {
  const factory _PlayerTactical({
    final String averagePosition,
    final List<String> zonesOccupied,
    final String offBallMovements,
    final List<String> teammateConnections,
  }) = _$PlayerTacticalImpl;

  factory _PlayerTactical.fromJson(Map<String, dynamic> json) =
      _$PlayerTacticalImpl.fromJson;

  @override
  String get averagePosition;
  @override
  List<String> get zonesOccupied;
  @override
  String get offBallMovements;
  @override
  List<String> get teammateConnections;

  /// Create a copy of PlayerTactical
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerTacticalImplCopyWith<_$PlayerTacticalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerEfficiency _$PlayerEfficiencyFromJson(Map<String, dynamic> json) {
  return _PlayerEfficiency.fromJson(json);
}

/// @nodoc
mixin _$PlayerEfficiency {
  double get dangerIndex => throw _privateConstructorUsedError;
  int get criticalErrors => throw _privateConstructorUsedError;
  String get decisionMaking => throw _privateConstructorUsedError;

  /// Serializes this PlayerEfficiency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerEfficiency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerEfficiencyCopyWith<PlayerEfficiency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEfficiencyCopyWith<$Res> {
  factory $PlayerEfficiencyCopyWith(
    PlayerEfficiency value,
    $Res Function(PlayerEfficiency) then,
  ) = _$PlayerEfficiencyCopyWithImpl<$Res, PlayerEfficiency>;
  @useResult
  $Res call({double dangerIndex, int criticalErrors, String decisionMaking});
}

/// @nodoc
class _$PlayerEfficiencyCopyWithImpl<$Res, $Val extends PlayerEfficiency>
    implements $PlayerEfficiencyCopyWith<$Res> {
  _$PlayerEfficiencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerEfficiency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangerIndex = null,
    Object? criticalErrors = null,
    Object? decisionMaking = null,
  }) {
    return _then(
      _value.copyWith(
            dangerIndex: null == dangerIndex
                ? _value.dangerIndex
                : dangerIndex // ignore: cast_nullable_to_non_nullable
                      as double,
            criticalErrors: null == criticalErrors
                ? _value.criticalErrors
                : criticalErrors // ignore: cast_nullable_to_non_nullable
                      as int,
            decisionMaking: null == decisionMaking
                ? _value.decisionMaking
                : decisionMaking // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlayerEfficiencyImplCopyWith<$Res>
    implements $PlayerEfficiencyCopyWith<$Res> {
  factory _$$PlayerEfficiencyImplCopyWith(
    _$PlayerEfficiencyImpl value,
    $Res Function(_$PlayerEfficiencyImpl) then,
  ) = __$$PlayerEfficiencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double dangerIndex, int criticalErrors, String decisionMaking});
}

/// @nodoc
class __$$PlayerEfficiencyImplCopyWithImpl<$Res>
    extends _$PlayerEfficiencyCopyWithImpl<$Res, _$PlayerEfficiencyImpl>
    implements _$$PlayerEfficiencyImplCopyWith<$Res> {
  __$$PlayerEfficiencyImplCopyWithImpl(
    _$PlayerEfficiencyImpl _value,
    $Res Function(_$PlayerEfficiencyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerEfficiency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dangerIndex = null,
    Object? criticalErrors = null,
    Object? decisionMaking = null,
  }) {
    return _then(
      _$PlayerEfficiencyImpl(
        dangerIndex: null == dangerIndex
            ? _value.dangerIndex
            : dangerIndex // ignore: cast_nullable_to_non_nullable
                  as double,
        criticalErrors: null == criticalErrors
            ? _value.criticalErrors
            : criticalErrors // ignore: cast_nullable_to_non_nullable
                  as int,
        decisionMaking: null == decisionMaking
            ? _value.decisionMaking
            : decisionMaking // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerEfficiencyImpl implements _PlayerEfficiency {
  const _$PlayerEfficiencyImpl({
    this.dangerIndex = 0.0,
    this.criticalErrors = 0,
    this.decisionMaking = '',
  });

  factory _$PlayerEfficiencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerEfficiencyImplFromJson(json);

  @override
  @JsonKey()
  final double dangerIndex;
  @override
  @JsonKey()
  final int criticalErrors;
  @override
  @JsonKey()
  final String decisionMaking;

  @override
  String toString() {
    return 'PlayerEfficiency(dangerIndex: $dangerIndex, criticalErrors: $criticalErrors, decisionMaking: $decisionMaking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerEfficiencyImpl &&
            (identical(other.dangerIndex, dangerIndex) ||
                other.dangerIndex == dangerIndex) &&
            (identical(other.criticalErrors, criticalErrors) ||
                other.criticalErrors == criticalErrors) &&
            (identical(other.decisionMaking, decisionMaking) ||
                other.decisionMaking == decisionMaking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dangerIndex, criticalErrors, decisionMaking);

  /// Create a copy of PlayerEfficiency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerEfficiencyImplCopyWith<_$PlayerEfficiencyImpl> get copyWith =>
      __$$PlayerEfficiencyImplCopyWithImpl<_$PlayerEfficiencyImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerEfficiencyImplToJson(this);
  }
}

abstract class _PlayerEfficiency implements PlayerEfficiency {
  const factory _PlayerEfficiency({
    final double dangerIndex,
    final int criticalErrors,
    final String decisionMaking,
  }) = _$PlayerEfficiencyImpl;

  factory _PlayerEfficiency.fromJson(Map<String, dynamic> json) =
      _$PlayerEfficiencyImpl.fromJson;

  @override
  double get dangerIndex;
  @override
  int get criticalErrors;
  @override
  String get decisionMaking;

  /// Create a copy of PlayerEfficiency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerEfficiencyImplCopyWith<_$PlayerEfficiencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpatialAnalysis _$SpatialAnalysisFromJson(Map<String, dynamic> json) {
  return _SpatialAnalysis.fromJson(json);
}

/// @nodoc
mixin _$SpatialAnalysis {
  String get teamHeatmap => throw _privateConstructorUsedError;
  List<String> get mostUsedZones => throw _privateConstructorUsedError;
  List<String> get chanceCreationZones => throw _privateConstructorUsedError;
  List<String> get recoveryZones => throw _privateConstructorUsedError;
  SpaceOccupation get spaceOccupation => throw _privateConstructorUsedError;

  /// Serializes this SpatialAnalysis to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpatialAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpatialAnalysisCopyWith<SpatialAnalysis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpatialAnalysisCopyWith<$Res> {
  factory $SpatialAnalysisCopyWith(
    SpatialAnalysis value,
    $Res Function(SpatialAnalysis) then,
  ) = _$SpatialAnalysisCopyWithImpl<$Res, SpatialAnalysis>;
  @useResult
  $Res call({
    String teamHeatmap,
    List<String> mostUsedZones,
    List<String> chanceCreationZones,
    List<String> recoveryZones,
    SpaceOccupation spaceOccupation,
  });

  $SpaceOccupationCopyWith<$Res> get spaceOccupation;
}

/// @nodoc
class _$SpatialAnalysisCopyWithImpl<$Res, $Val extends SpatialAnalysis>
    implements $SpatialAnalysisCopyWith<$Res> {
  _$SpatialAnalysisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpatialAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamHeatmap = null,
    Object? mostUsedZones = null,
    Object? chanceCreationZones = null,
    Object? recoveryZones = null,
    Object? spaceOccupation = null,
  }) {
    return _then(
      _value.copyWith(
            teamHeatmap: null == teamHeatmap
                ? _value.teamHeatmap
                : teamHeatmap // ignore: cast_nullable_to_non_nullable
                      as String,
            mostUsedZones: null == mostUsedZones
                ? _value.mostUsedZones
                : mostUsedZones // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            chanceCreationZones: null == chanceCreationZones
                ? _value.chanceCreationZones
                : chanceCreationZones // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            recoveryZones: null == recoveryZones
                ? _value.recoveryZones
                : recoveryZones // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            spaceOccupation: null == spaceOccupation
                ? _value.spaceOccupation
                : spaceOccupation // ignore: cast_nullable_to_non_nullable
                      as SpaceOccupation,
          )
          as $Val,
    );
  }

  /// Create a copy of SpatialAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpaceOccupationCopyWith<$Res> get spaceOccupation {
    return $SpaceOccupationCopyWith<$Res>(_value.spaceOccupation, (value) {
      return _then(_value.copyWith(spaceOccupation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpatialAnalysisImplCopyWith<$Res>
    implements $SpatialAnalysisCopyWith<$Res> {
  factory _$$SpatialAnalysisImplCopyWith(
    _$SpatialAnalysisImpl value,
    $Res Function(_$SpatialAnalysisImpl) then,
  ) = __$$SpatialAnalysisImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String teamHeatmap,
    List<String> mostUsedZones,
    List<String> chanceCreationZones,
    List<String> recoveryZones,
    SpaceOccupation spaceOccupation,
  });

  @override
  $SpaceOccupationCopyWith<$Res> get spaceOccupation;
}

/// @nodoc
class __$$SpatialAnalysisImplCopyWithImpl<$Res>
    extends _$SpatialAnalysisCopyWithImpl<$Res, _$SpatialAnalysisImpl>
    implements _$$SpatialAnalysisImplCopyWith<$Res> {
  __$$SpatialAnalysisImplCopyWithImpl(
    _$SpatialAnalysisImpl _value,
    $Res Function(_$SpatialAnalysisImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpatialAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamHeatmap = null,
    Object? mostUsedZones = null,
    Object? chanceCreationZones = null,
    Object? recoveryZones = null,
    Object? spaceOccupation = null,
  }) {
    return _then(
      _$SpatialAnalysisImpl(
        teamHeatmap: null == teamHeatmap
            ? _value.teamHeatmap
            : teamHeatmap // ignore: cast_nullable_to_non_nullable
                  as String,
        mostUsedZones: null == mostUsedZones
            ? _value._mostUsedZones
            : mostUsedZones // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        chanceCreationZones: null == chanceCreationZones
            ? _value._chanceCreationZones
            : chanceCreationZones // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        recoveryZones: null == recoveryZones
            ? _value._recoveryZones
            : recoveryZones // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        spaceOccupation: null == spaceOccupation
            ? _value.spaceOccupation
            : spaceOccupation // ignore: cast_nullable_to_non_nullable
                  as SpaceOccupation,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpatialAnalysisImpl implements _SpatialAnalysis {
  const _$SpatialAnalysisImpl({
    this.teamHeatmap = '',
    final List<String> mostUsedZones = const [],
    final List<String> chanceCreationZones = const [],
    final List<String> recoveryZones = const [],
    this.spaceOccupation = const SpaceOccupation(),
  }) : _mostUsedZones = mostUsedZones,
       _chanceCreationZones = chanceCreationZones,
       _recoveryZones = recoveryZones;

  factory _$SpatialAnalysisImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpatialAnalysisImplFromJson(json);

  @override
  @JsonKey()
  final String teamHeatmap;
  final List<String> _mostUsedZones;
  @override
  @JsonKey()
  List<String> get mostUsedZones {
    if (_mostUsedZones is EqualUnmodifiableListView) return _mostUsedZones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mostUsedZones);
  }

  final List<String> _chanceCreationZones;
  @override
  @JsonKey()
  List<String> get chanceCreationZones {
    if (_chanceCreationZones is EqualUnmodifiableListView)
      return _chanceCreationZones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chanceCreationZones);
  }

  final List<String> _recoveryZones;
  @override
  @JsonKey()
  List<String> get recoveryZones {
    if (_recoveryZones is EqualUnmodifiableListView) return _recoveryZones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recoveryZones);
  }

  @override
  @JsonKey()
  final SpaceOccupation spaceOccupation;

  @override
  String toString() {
    return 'SpatialAnalysis(teamHeatmap: $teamHeatmap, mostUsedZones: $mostUsedZones, chanceCreationZones: $chanceCreationZones, recoveryZones: $recoveryZones, spaceOccupation: $spaceOccupation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpatialAnalysisImpl &&
            (identical(other.teamHeatmap, teamHeatmap) ||
                other.teamHeatmap == teamHeatmap) &&
            const DeepCollectionEquality().equals(
              other._mostUsedZones,
              _mostUsedZones,
            ) &&
            const DeepCollectionEquality().equals(
              other._chanceCreationZones,
              _chanceCreationZones,
            ) &&
            const DeepCollectionEquality().equals(
              other._recoveryZones,
              _recoveryZones,
            ) &&
            (identical(other.spaceOccupation, spaceOccupation) ||
                other.spaceOccupation == spaceOccupation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    teamHeatmap,
    const DeepCollectionEquality().hash(_mostUsedZones),
    const DeepCollectionEquality().hash(_chanceCreationZones),
    const DeepCollectionEquality().hash(_recoveryZones),
    spaceOccupation,
  );

  /// Create a copy of SpatialAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpatialAnalysisImplCopyWith<_$SpatialAnalysisImpl> get copyWith =>
      __$$SpatialAnalysisImplCopyWithImpl<_$SpatialAnalysisImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SpatialAnalysisImplToJson(this);
  }
}

abstract class _SpatialAnalysis implements SpatialAnalysis {
  const factory _SpatialAnalysis({
    final String teamHeatmap,
    final List<String> mostUsedZones,
    final List<String> chanceCreationZones,
    final List<String> recoveryZones,
    final SpaceOccupation spaceOccupation,
  }) = _$SpatialAnalysisImpl;

  factory _SpatialAnalysis.fromJson(Map<String, dynamic> json) =
      _$SpatialAnalysisImpl.fromJson;

  @override
  String get teamHeatmap;
  @override
  List<String> get mostUsedZones;
  @override
  List<String> get chanceCreationZones;
  @override
  List<String> get recoveryZones;
  @override
  SpaceOccupation get spaceOccupation;

  /// Create a copy of SpatialAnalysis
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpatialAnalysisImplCopyWith<_$SpatialAnalysisImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpaceOccupation _$SpaceOccupationFromJson(Map<String, dynamic> json) {
  return _SpaceOccupation.fromJson(json);
}

/// @nodoc
mixin _$SpaceOccupation {
  String get widthUsage => throw _privateConstructorUsedError;
  String get depthUsage => throw _privateConstructorUsedError;
  String get betweenLinesPlay => throw _privateConstructorUsedError;

  /// Serializes this SpaceOccupation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpaceOccupation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpaceOccupationCopyWith<SpaceOccupation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceOccupationCopyWith<$Res> {
  factory $SpaceOccupationCopyWith(
    SpaceOccupation value,
    $Res Function(SpaceOccupation) then,
  ) = _$SpaceOccupationCopyWithImpl<$Res, SpaceOccupation>;
  @useResult
  $Res call({String widthUsage, String depthUsage, String betweenLinesPlay});
}

/// @nodoc
class _$SpaceOccupationCopyWithImpl<$Res, $Val extends SpaceOccupation>
    implements $SpaceOccupationCopyWith<$Res> {
  _$SpaceOccupationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpaceOccupation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widthUsage = null,
    Object? depthUsage = null,
    Object? betweenLinesPlay = null,
  }) {
    return _then(
      _value.copyWith(
            widthUsage: null == widthUsage
                ? _value.widthUsage
                : widthUsage // ignore: cast_nullable_to_non_nullable
                      as String,
            depthUsage: null == depthUsage
                ? _value.depthUsage
                : depthUsage // ignore: cast_nullable_to_non_nullable
                      as String,
            betweenLinesPlay: null == betweenLinesPlay
                ? _value.betweenLinesPlay
                : betweenLinesPlay // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpaceOccupationImplCopyWith<$Res>
    implements $SpaceOccupationCopyWith<$Res> {
  factory _$$SpaceOccupationImplCopyWith(
    _$SpaceOccupationImpl value,
    $Res Function(_$SpaceOccupationImpl) then,
  ) = __$$SpaceOccupationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String widthUsage, String depthUsage, String betweenLinesPlay});
}

/// @nodoc
class __$$SpaceOccupationImplCopyWithImpl<$Res>
    extends _$SpaceOccupationCopyWithImpl<$Res, _$SpaceOccupationImpl>
    implements _$$SpaceOccupationImplCopyWith<$Res> {
  __$$SpaceOccupationImplCopyWithImpl(
    _$SpaceOccupationImpl _value,
    $Res Function(_$SpaceOccupationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpaceOccupation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? widthUsage = null,
    Object? depthUsage = null,
    Object? betweenLinesPlay = null,
  }) {
    return _then(
      _$SpaceOccupationImpl(
        widthUsage: null == widthUsage
            ? _value.widthUsage
            : widthUsage // ignore: cast_nullable_to_non_nullable
                  as String,
        depthUsage: null == depthUsage
            ? _value.depthUsage
            : depthUsage // ignore: cast_nullable_to_non_nullable
                  as String,
        betweenLinesPlay: null == betweenLinesPlay
            ? _value.betweenLinesPlay
            : betweenLinesPlay // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpaceOccupationImpl implements _SpaceOccupation {
  const _$SpaceOccupationImpl({
    this.widthUsage = '',
    this.depthUsage = '',
    this.betweenLinesPlay = '',
  });

  factory _$SpaceOccupationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpaceOccupationImplFromJson(json);

  @override
  @JsonKey()
  final String widthUsage;
  @override
  @JsonKey()
  final String depthUsage;
  @override
  @JsonKey()
  final String betweenLinesPlay;

  @override
  String toString() {
    return 'SpaceOccupation(widthUsage: $widthUsage, depthUsage: $depthUsage, betweenLinesPlay: $betweenLinesPlay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpaceOccupationImpl &&
            (identical(other.widthUsage, widthUsage) ||
                other.widthUsage == widthUsage) &&
            (identical(other.depthUsage, depthUsage) ||
                other.depthUsage == depthUsage) &&
            (identical(other.betweenLinesPlay, betweenLinesPlay) ||
                other.betweenLinesPlay == betweenLinesPlay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, widthUsage, depthUsage, betweenLinesPlay);

  /// Create a copy of SpaceOccupation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaceOccupationImplCopyWith<_$SpaceOccupationImpl> get copyWith =>
      __$$SpaceOccupationImplCopyWithImpl<_$SpaceOccupationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SpaceOccupationImplToJson(this);
  }
}

abstract class _SpaceOccupation implements SpaceOccupation {
  const factory _SpaceOccupation({
    final String widthUsage,
    final String depthUsage,
    final String betweenLinesPlay,
  }) = _$SpaceOccupationImpl;

  factory _SpaceOccupation.fromJson(Map<String, dynamic> json) =
      _$SpaceOccupationImpl.fromJson;

  @override
  String get widthUsage;
  @override
  String get depthUsage;
  @override
  String get betweenLinesPlay;

  /// Create a copy of SpaceOccupation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpaceOccupationImplCopyWith<_$SpaceOccupationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TeamTactics _$TeamTacticsFromJson(Map<String, dynamic> json) {
  return _TeamTactics.fromJson(json);
}

/// @nodoc
mixin _$TeamTactics {
  TacticsSystem get system => throw _privateConstructorUsedError;
  TacticsPossession get possession => throw _privateConstructorUsedError;
  TacticsDefense get defense => throw _privateConstructorUsedError;

  /// Serializes this TeamTactics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TeamTactics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TeamTacticsCopyWith<TeamTactics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamTacticsCopyWith<$Res> {
  factory $TeamTacticsCopyWith(
    TeamTactics value,
    $Res Function(TeamTactics) then,
  ) = _$TeamTacticsCopyWithImpl<$Res, TeamTactics>;
  @useResult
  $Res call({
    TacticsSystem system,
    TacticsPossession possession,
    TacticsDefense defense,
  });

  $TacticsSystemCopyWith<$Res> get system;
  $TacticsPossessionCopyWith<$Res> get possession;
  $TacticsDefenseCopyWith<$Res> get defense;
}

/// @nodoc
class _$TeamTacticsCopyWithImpl<$Res, $Val extends TeamTactics>
    implements $TeamTacticsCopyWith<$Res> {
  _$TeamTacticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TeamTactics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? system = null,
    Object? possession = null,
    Object? defense = null,
  }) {
    return _then(
      _value.copyWith(
            system: null == system
                ? _value.system
                : system // ignore: cast_nullable_to_non_nullable
                      as TacticsSystem,
            possession: null == possession
                ? _value.possession
                : possession // ignore: cast_nullable_to_non_nullable
                      as TacticsPossession,
            defense: null == defense
                ? _value.defense
                : defense // ignore: cast_nullable_to_non_nullable
                      as TacticsDefense,
          )
          as $Val,
    );
  }

  /// Create a copy of TeamTactics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TacticsSystemCopyWith<$Res> get system {
    return $TacticsSystemCopyWith<$Res>(_value.system, (value) {
      return _then(_value.copyWith(system: value) as $Val);
    });
  }

  /// Create a copy of TeamTactics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TacticsPossessionCopyWith<$Res> get possession {
    return $TacticsPossessionCopyWith<$Res>(_value.possession, (value) {
      return _then(_value.copyWith(possession: value) as $Val);
    });
  }

  /// Create a copy of TeamTactics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TacticsDefenseCopyWith<$Res> get defense {
    return $TacticsDefenseCopyWith<$Res>(_value.defense, (value) {
      return _then(_value.copyWith(defense: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamTacticsImplCopyWith<$Res>
    implements $TeamTacticsCopyWith<$Res> {
  factory _$$TeamTacticsImplCopyWith(
    _$TeamTacticsImpl value,
    $Res Function(_$TeamTacticsImpl) then,
  ) = __$$TeamTacticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    TacticsSystem system,
    TacticsPossession possession,
    TacticsDefense defense,
  });

  @override
  $TacticsSystemCopyWith<$Res> get system;
  @override
  $TacticsPossessionCopyWith<$Res> get possession;
  @override
  $TacticsDefenseCopyWith<$Res> get defense;
}

/// @nodoc
class __$$TeamTacticsImplCopyWithImpl<$Res>
    extends _$TeamTacticsCopyWithImpl<$Res, _$TeamTacticsImpl>
    implements _$$TeamTacticsImplCopyWith<$Res> {
  __$$TeamTacticsImplCopyWithImpl(
    _$TeamTacticsImpl _value,
    $Res Function(_$TeamTacticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TeamTactics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? system = null,
    Object? possession = null,
    Object? defense = null,
  }) {
    return _then(
      _$TeamTacticsImpl(
        system: null == system
            ? _value.system
            : system // ignore: cast_nullable_to_non_nullable
                  as TacticsSystem,
        possession: null == possession
            ? _value.possession
            : possession // ignore: cast_nullable_to_non_nullable
                  as TacticsPossession,
        defense: null == defense
            ? _value.defense
            : defense // ignore: cast_nullable_to_non_nullable
                  as TacticsDefense,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamTacticsImpl implements _TeamTactics {
  const _$TeamTacticsImpl({
    this.system = const TacticsSystem(),
    this.possession = const TacticsPossession(),
    this.defense = const TacticsDefense(),
  });

  factory _$TeamTacticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamTacticsImplFromJson(json);

  @override
  @JsonKey()
  final TacticsSystem system;
  @override
  @JsonKey()
  final TacticsPossession possession;
  @override
  @JsonKey()
  final TacticsDefense defense;

  @override
  String toString() {
    return 'TeamTactics(system: $system, possession: $possession, defense: $defense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamTacticsImpl &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.possession, possession) ||
                other.possession == possession) &&
            (identical(other.defense, defense) || other.defense == defense));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, system, possession, defense);

  /// Create a copy of TeamTactics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamTacticsImplCopyWith<_$TeamTacticsImpl> get copyWith =>
      __$$TeamTacticsImplCopyWithImpl<_$TeamTacticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamTacticsImplToJson(this);
  }
}

abstract class _TeamTactics implements TeamTactics {
  const factory _TeamTactics({
    final TacticsSystem system,
    final TacticsPossession possession,
    final TacticsDefense defense,
  }) = _$TeamTacticsImpl;

  factory _TeamTactics.fromJson(Map<String, dynamic> json) =
      _$TeamTacticsImpl.fromJson;

  @override
  TacticsSystem get system;
  @override
  TacticsPossession get possession;
  @override
  TacticsDefense get defense;

  /// Create a copy of TeamTactics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TeamTacticsImplCopyWith<_$TeamTacticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TacticsSystem _$TacticsSystemFromJson(Map<String, dynamic> json) {
  return _TacticsSystem.fromJson(json);
}

/// @nodoc
mixin _$TacticsSystem {
  String get starting => throw _privateConstructorUsedError;
  List<String> get changes => throw _privateConstructorUsedError;

  /// Serializes this TacticsSystem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TacticsSystem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TacticsSystemCopyWith<TacticsSystem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticsSystemCopyWith<$Res> {
  factory $TacticsSystemCopyWith(
    TacticsSystem value,
    $Res Function(TacticsSystem) then,
  ) = _$TacticsSystemCopyWithImpl<$Res, TacticsSystem>;
  @useResult
  $Res call({String starting, List<String> changes});
}

/// @nodoc
class _$TacticsSystemCopyWithImpl<$Res, $Val extends TacticsSystem>
    implements $TacticsSystemCopyWith<$Res> {
  _$TacticsSystemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TacticsSystem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? starting = null, Object? changes = null}) {
    return _then(
      _value.copyWith(
            starting: null == starting
                ? _value.starting
                : starting // ignore: cast_nullable_to_non_nullable
                      as String,
            changes: null == changes
                ? _value.changes
                : changes // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TacticsSystemImplCopyWith<$Res>
    implements $TacticsSystemCopyWith<$Res> {
  factory _$$TacticsSystemImplCopyWith(
    _$TacticsSystemImpl value,
    $Res Function(_$TacticsSystemImpl) then,
  ) = __$$TacticsSystemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String starting, List<String> changes});
}

/// @nodoc
class __$$TacticsSystemImplCopyWithImpl<$Res>
    extends _$TacticsSystemCopyWithImpl<$Res, _$TacticsSystemImpl>
    implements _$$TacticsSystemImplCopyWith<$Res> {
  __$$TacticsSystemImplCopyWithImpl(
    _$TacticsSystemImpl _value,
    $Res Function(_$TacticsSystemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TacticsSystem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? starting = null, Object? changes = null}) {
    return _then(
      _$TacticsSystemImpl(
        starting: null == starting
            ? _value.starting
            : starting // ignore: cast_nullable_to_non_nullable
                  as String,
        changes: null == changes
            ? _value._changes
            : changes // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticsSystemImpl implements _TacticsSystem {
  const _$TacticsSystemImpl({
    this.starting = '',
    final List<String> changes = const [],
  }) : _changes = changes;

  factory _$TacticsSystemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticsSystemImplFromJson(json);

  @override
  @JsonKey()
  final String starting;
  final List<String> _changes;
  @override
  @JsonKey()
  List<String> get changes {
    if (_changes is EqualUnmodifiableListView) return _changes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_changes);
  }

  @override
  String toString() {
    return 'TacticsSystem(starting: $starting, changes: $changes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticsSystemImpl &&
            (identical(other.starting, starting) ||
                other.starting == starting) &&
            const DeepCollectionEquality().equals(other._changes, _changes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    starting,
    const DeepCollectionEquality().hash(_changes),
  );

  /// Create a copy of TacticsSystem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticsSystemImplCopyWith<_$TacticsSystemImpl> get copyWith =>
      __$$TacticsSystemImplCopyWithImpl<_$TacticsSystemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TacticsSystemImplToJson(this);
  }
}

abstract class _TacticsSystem implements TacticsSystem {
  const factory _TacticsSystem({
    final String starting,
    final List<String> changes,
  }) = _$TacticsSystemImpl;

  factory _TacticsSystem.fromJson(Map<String, dynamic> json) =
      _$TacticsSystemImpl.fromJson;

  @override
  String get starting;
  @override
  List<String> get changes;

  /// Create a copy of TacticsSystem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticsSystemImplCopyWith<_$TacticsSystemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TacticsPossession _$TacticsPossessionFromJson(Map<String, dynamic> json) {
  return _TacticsPossession.fromJson(json);
}

/// @nodoc
mixin _$TacticsPossession {
  String get buildUp => throw _privateConstructorUsedError;
  String get rotations => throw _privateConstructorUsedError;
  String get pivotUsage => throw _privateConstructorUsedError;

  /// Serializes this TacticsPossession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TacticsPossession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TacticsPossessionCopyWith<TacticsPossession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticsPossessionCopyWith<$Res> {
  factory $TacticsPossessionCopyWith(
    TacticsPossession value,
    $Res Function(TacticsPossession) then,
  ) = _$TacticsPossessionCopyWithImpl<$Res, TacticsPossession>;
  @useResult
  $Res call({String buildUp, String rotations, String pivotUsage});
}

/// @nodoc
class _$TacticsPossessionCopyWithImpl<$Res, $Val extends TacticsPossession>
    implements $TacticsPossessionCopyWith<$Res> {
  _$TacticsPossessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TacticsPossession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildUp = null,
    Object? rotations = null,
    Object? pivotUsage = null,
  }) {
    return _then(
      _value.copyWith(
            buildUp: null == buildUp
                ? _value.buildUp
                : buildUp // ignore: cast_nullable_to_non_nullable
                      as String,
            rotations: null == rotations
                ? _value.rotations
                : rotations // ignore: cast_nullable_to_non_nullable
                      as String,
            pivotUsage: null == pivotUsage
                ? _value.pivotUsage
                : pivotUsage // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TacticsPossessionImplCopyWith<$Res>
    implements $TacticsPossessionCopyWith<$Res> {
  factory _$$TacticsPossessionImplCopyWith(
    _$TacticsPossessionImpl value,
    $Res Function(_$TacticsPossessionImpl) then,
  ) = __$$TacticsPossessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String buildUp, String rotations, String pivotUsage});
}

/// @nodoc
class __$$TacticsPossessionImplCopyWithImpl<$Res>
    extends _$TacticsPossessionCopyWithImpl<$Res, _$TacticsPossessionImpl>
    implements _$$TacticsPossessionImplCopyWith<$Res> {
  __$$TacticsPossessionImplCopyWithImpl(
    _$TacticsPossessionImpl _value,
    $Res Function(_$TacticsPossessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TacticsPossession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildUp = null,
    Object? rotations = null,
    Object? pivotUsage = null,
  }) {
    return _then(
      _$TacticsPossessionImpl(
        buildUp: null == buildUp
            ? _value.buildUp
            : buildUp // ignore: cast_nullable_to_non_nullable
                  as String,
        rotations: null == rotations
            ? _value.rotations
            : rotations // ignore: cast_nullable_to_non_nullable
                  as String,
        pivotUsage: null == pivotUsage
            ? _value.pivotUsage
            : pivotUsage // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticsPossessionImpl implements _TacticsPossession {
  const _$TacticsPossessionImpl({
    this.buildUp = '',
    this.rotations = '',
    this.pivotUsage = '',
  });

  factory _$TacticsPossessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticsPossessionImplFromJson(json);

  @override
  @JsonKey()
  final String buildUp;
  @override
  @JsonKey()
  final String rotations;
  @override
  @JsonKey()
  final String pivotUsage;

  @override
  String toString() {
    return 'TacticsPossession(buildUp: $buildUp, rotations: $rotations, pivotUsage: $pivotUsage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticsPossessionImpl &&
            (identical(other.buildUp, buildUp) || other.buildUp == buildUp) &&
            (identical(other.rotations, rotations) ||
                other.rotations == rotations) &&
            (identical(other.pivotUsage, pivotUsage) ||
                other.pivotUsage == pivotUsage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, buildUp, rotations, pivotUsage);

  /// Create a copy of TacticsPossession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticsPossessionImplCopyWith<_$TacticsPossessionImpl> get copyWith =>
      __$$TacticsPossessionImplCopyWithImpl<_$TacticsPossessionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TacticsPossessionImplToJson(this);
  }
}

abstract class _TacticsPossession implements TacticsPossession {
  const factory _TacticsPossession({
    final String buildUp,
    final String rotations,
    final String pivotUsage,
  }) = _$TacticsPossessionImpl;

  factory _TacticsPossession.fromJson(Map<String, dynamic> json) =
      _$TacticsPossessionImpl.fromJson;

  @override
  String get buildUp;
  @override
  String get rotations;
  @override
  String get pivotUsage;

  /// Create a copy of TacticsPossession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticsPossessionImplCopyWith<_$TacticsPossessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TacticsDefense _$TacticsDefenseFromJson(Map<String, dynamic> json) {
  return _TacticsDefense.fromJson(json);
}

/// @nodoc
mixin _$TacticsDefense {
  String get pressing => throw _privateConstructorUsedError;
  String get style => throw _privateConstructorUsedError;

  /// Serializes this TacticsDefense to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TacticsDefense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TacticsDefenseCopyWith<TacticsDefense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TacticsDefenseCopyWith<$Res> {
  factory $TacticsDefenseCopyWith(
    TacticsDefense value,
    $Res Function(TacticsDefense) then,
  ) = _$TacticsDefenseCopyWithImpl<$Res, TacticsDefense>;
  @useResult
  $Res call({String pressing, String style});
}

/// @nodoc
class _$TacticsDefenseCopyWithImpl<$Res, $Val extends TacticsDefense>
    implements $TacticsDefenseCopyWith<$Res> {
  _$TacticsDefenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TacticsDefense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pressing = null, Object? style = null}) {
    return _then(
      _value.copyWith(
            pressing: null == pressing
                ? _value.pressing
                : pressing // ignore: cast_nullable_to_non_nullable
                      as String,
            style: null == style
                ? _value.style
                : style // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TacticsDefenseImplCopyWith<$Res>
    implements $TacticsDefenseCopyWith<$Res> {
  factory _$$TacticsDefenseImplCopyWith(
    _$TacticsDefenseImpl value,
    $Res Function(_$TacticsDefenseImpl) then,
  ) = __$$TacticsDefenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pressing, String style});
}

/// @nodoc
class __$$TacticsDefenseImplCopyWithImpl<$Res>
    extends _$TacticsDefenseCopyWithImpl<$Res, _$TacticsDefenseImpl>
    implements _$$TacticsDefenseImplCopyWith<$Res> {
  __$$TacticsDefenseImplCopyWithImpl(
    _$TacticsDefenseImpl _value,
    $Res Function(_$TacticsDefenseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TacticsDefense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pressing = null, Object? style = null}) {
    return _then(
      _$TacticsDefenseImpl(
        pressing: null == pressing
            ? _value.pressing
            : pressing // ignore: cast_nullable_to_non_nullable
                  as String,
        style: null == style
            ? _value.style
            : style // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TacticsDefenseImpl implements _TacticsDefense {
  const _$TacticsDefenseImpl({this.pressing = '', this.style = ''});

  factory _$TacticsDefenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TacticsDefenseImplFromJson(json);

  @override
  @JsonKey()
  final String pressing;
  @override
  @JsonKey()
  final String style;

  @override
  String toString() {
    return 'TacticsDefense(pressing: $pressing, style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TacticsDefenseImpl &&
            (identical(other.pressing, pressing) ||
                other.pressing == pressing) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pressing, style);

  /// Create a copy of TacticsDefense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TacticsDefenseImplCopyWith<_$TacticsDefenseImpl> get copyWith =>
      __$$TacticsDefenseImplCopyWithImpl<_$TacticsDefenseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TacticsDefenseImplToJson(this);
  }
}

abstract class _TacticsDefense implements TacticsDefense {
  const factory _TacticsDefense({final String pressing, final String style}) =
      _$TacticsDefenseImpl;

  factory _TacticsDefense.fromJson(Map<String, dynamic> json) =
      _$TacticsDefenseImpl.fromJson;

  @override
  String get pressing;
  @override
  String get style;

  /// Create a copy of TacticsDefense
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TacticsDefenseImplCopyWith<_$TacticsDefenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetPieces _$SetPiecesFromJson(Map<String, dynamic> json) {
  return _SetPieces.fromJson(json);
}

/// @nodoc
mixin _$SetPieces {
  int get cornersTaken => throw _privateConstructorUsedError;
  int get cornerRoutines => throw _privateConstructorUsedError;
  int get freeKicks => throw _privateConstructorUsedError;
  int get accumulatedFouls => throw _privateConstructorUsedError;
  int get doublePenalties => throw _privateConstructorUsedError;

  /// Serializes this SetPieces to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetPieces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetPiecesCopyWith<SetPieces> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPiecesCopyWith<$Res> {
  factory $SetPiecesCopyWith(SetPieces value, $Res Function(SetPieces) then) =
      _$SetPiecesCopyWithImpl<$Res, SetPieces>;
  @useResult
  $Res call({
    int cornersTaken,
    int cornerRoutines,
    int freeKicks,
    int accumulatedFouls,
    int doublePenalties,
  });
}

/// @nodoc
class _$SetPiecesCopyWithImpl<$Res, $Val extends SetPieces>
    implements $SetPiecesCopyWith<$Res> {
  _$SetPiecesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetPieces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cornersTaken = null,
    Object? cornerRoutines = null,
    Object? freeKicks = null,
    Object? accumulatedFouls = null,
    Object? doublePenalties = null,
  }) {
    return _then(
      _value.copyWith(
            cornersTaken: null == cornersTaken
                ? _value.cornersTaken
                : cornersTaken // ignore: cast_nullable_to_non_nullable
                      as int,
            cornerRoutines: null == cornerRoutines
                ? _value.cornerRoutines
                : cornerRoutines // ignore: cast_nullable_to_non_nullable
                      as int,
            freeKicks: null == freeKicks
                ? _value.freeKicks
                : freeKicks // ignore: cast_nullable_to_non_nullable
                      as int,
            accumulatedFouls: null == accumulatedFouls
                ? _value.accumulatedFouls
                : accumulatedFouls // ignore: cast_nullable_to_non_nullable
                      as int,
            doublePenalties: null == doublePenalties
                ? _value.doublePenalties
                : doublePenalties // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SetPiecesImplCopyWith<$Res>
    implements $SetPiecesCopyWith<$Res> {
  factory _$$SetPiecesImplCopyWith(
    _$SetPiecesImpl value,
    $Res Function(_$SetPiecesImpl) then,
  ) = __$$SetPiecesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int cornersTaken,
    int cornerRoutines,
    int freeKicks,
    int accumulatedFouls,
    int doublePenalties,
  });
}

/// @nodoc
class __$$SetPiecesImplCopyWithImpl<$Res>
    extends _$SetPiecesCopyWithImpl<$Res, _$SetPiecesImpl>
    implements _$$SetPiecesImplCopyWith<$Res> {
  __$$SetPiecesImplCopyWithImpl(
    _$SetPiecesImpl _value,
    $Res Function(_$SetPiecesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SetPieces
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cornersTaken = null,
    Object? cornerRoutines = null,
    Object? freeKicks = null,
    Object? accumulatedFouls = null,
    Object? doublePenalties = null,
  }) {
    return _then(
      _$SetPiecesImpl(
        cornersTaken: null == cornersTaken
            ? _value.cornersTaken
            : cornersTaken // ignore: cast_nullable_to_non_nullable
                  as int,
        cornerRoutines: null == cornerRoutines
            ? _value.cornerRoutines
            : cornerRoutines // ignore: cast_nullable_to_non_nullable
                  as int,
        freeKicks: null == freeKicks
            ? _value.freeKicks
            : freeKicks // ignore: cast_nullable_to_non_nullable
                  as int,
        accumulatedFouls: null == accumulatedFouls
            ? _value.accumulatedFouls
            : accumulatedFouls // ignore: cast_nullable_to_non_nullable
                  as int,
        doublePenalties: null == doublePenalties
            ? _value.doublePenalties
            : doublePenalties // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SetPiecesImpl implements _SetPieces {
  const _$SetPiecesImpl({
    this.cornersTaken = 0,
    this.cornerRoutines = 0,
    this.freeKicks = 0,
    this.accumulatedFouls = 0,
    this.doublePenalties = 0,
  });

  factory _$SetPiecesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetPiecesImplFromJson(json);

  @override
  @JsonKey()
  final int cornersTaken;
  @override
  @JsonKey()
  final int cornerRoutines;
  @override
  @JsonKey()
  final int freeKicks;
  @override
  @JsonKey()
  final int accumulatedFouls;
  @override
  @JsonKey()
  final int doublePenalties;

  @override
  String toString() {
    return 'SetPieces(cornersTaken: $cornersTaken, cornerRoutines: $cornerRoutines, freeKicks: $freeKicks, accumulatedFouls: $accumulatedFouls, doublePenalties: $doublePenalties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPiecesImpl &&
            (identical(other.cornersTaken, cornersTaken) ||
                other.cornersTaken == cornersTaken) &&
            (identical(other.cornerRoutines, cornerRoutines) ||
                other.cornerRoutines == cornerRoutines) &&
            (identical(other.freeKicks, freeKicks) ||
                other.freeKicks == freeKicks) &&
            (identical(other.accumulatedFouls, accumulatedFouls) ||
                other.accumulatedFouls == accumulatedFouls) &&
            (identical(other.doublePenalties, doublePenalties) ||
                other.doublePenalties == doublePenalties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    cornersTaken,
    cornerRoutines,
    freeKicks,
    accumulatedFouls,
    doublePenalties,
  );

  /// Create a copy of SetPieces
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPiecesImplCopyWith<_$SetPiecesImpl> get copyWith =>
      __$$SetPiecesImplCopyWithImpl<_$SetPiecesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetPiecesImplToJson(this);
  }
}

abstract class _SetPieces implements SetPieces {
  const factory _SetPieces({
    final int cornersTaken,
    final int cornerRoutines,
    final int freeKicks,
    final int accumulatedFouls,
    final int doublePenalties,
  }) = _$SetPiecesImpl;

  factory _SetPieces.fromJson(Map<String, dynamic> json) =
      _$SetPiecesImpl.fromJson;

  @override
  int get cornersTaken;
  @override
  int get cornerRoutines;
  @override
  int get freeKicks;
  @override
  int get accumulatedFouls;
  @override
  int get doublePenalties;

  /// Create a copy of SetPieces
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPiecesImplCopyWith<_$SetPiecesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DecisionMaking _$DecisionMakingFromJson(Map<String, dynamic> json) {
  return _DecisionMaking.fromJson(json);
}

/// @nodoc
mixin _$DecisionMaking {
  String get underPressureChoices => throw _privateConstructorUsedError;
  String get gameTempo => throw _privateConstructorUsedError;
  int get unforcedErrors => throw _privateConstructorUsedError;
  String get superiorityChoices => throw _privateConstructorUsedError;

  /// Serializes this DecisionMaking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecisionMaking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecisionMakingCopyWith<DecisionMaking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecisionMakingCopyWith<$Res> {
  factory $DecisionMakingCopyWith(
    DecisionMaking value,
    $Res Function(DecisionMaking) then,
  ) = _$DecisionMakingCopyWithImpl<$Res, DecisionMaking>;
  @useResult
  $Res call({
    String underPressureChoices,
    String gameTempo,
    int unforcedErrors,
    String superiorityChoices,
  });
}

/// @nodoc
class _$DecisionMakingCopyWithImpl<$Res, $Val extends DecisionMaking>
    implements $DecisionMakingCopyWith<$Res> {
  _$DecisionMakingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecisionMaking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? underPressureChoices = null,
    Object? gameTempo = null,
    Object? unforcedErrors = null,
    Object? superiorityChoices = null,
  }) {
    return _then(
      _value.copyWith(
            underPressureChoices: null == underPressureChoices
                ? _value.underPressureChoices
                : underPressureChoices // ignore: cast_nullable_to_non_nullable
                      as String,
            gameTempo: null == gameTempo
                ? _value.gameTempo
                : gameTempo // ignore: cast_nullable_to_non_nullable
                      as String,
            unforcedErrors: null == unforcedErrors
                ? _value.unforcedErrors
                : unforcedErrors // ignore: cast_nullable_to_non_nullable
                      as int,
            superiorityChoices: null == superiorityChoices
                ? _value.superiorityChoices
                : superiorityChoices // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DecisionMakingImplCopyWith<$Res>
    implements $DecisionMakingCopyWith<$Res> {
  factory _$$DecisionMakingImplCopyWith(
    _$DecisionMakingImpl value,
    $Res Function(_$DecisionMakingImpl) then,
  ) = __$$DecisionMakingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String underPressureChoices,
    String gameTempo,
    int unforcedErrors,
    String superiorityChoices,
  });
}

/// @nodoc
class __$$DecisionMakingImplCopyWithImpl<$Res>
    extends _$DecisionMakingCopyWithImpl<$Res, _$DecisionMakingImpl>
    implements _$$DecisionMakingImplCopyWith<$Res> {
  __$$DecisionMakingImplCopyWithImpl(
    _$DecisionMakingImpl _value,
    $Res Function(_$DecisionMakingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DecisionMaking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? underPressureChoices = null,
    Object? gameTempo = null,
    Object? unforcedErrors = null,
    Object? superiorityChoices = null,
  }) {
    return _then(
      _$DecisionMakingImpl(
        underPressureChoices: null == underPressureChoices
            ? _value.underPressureChoices
            : underPressureChoices // ignore: cast_nullable_to_non_nullable
                  as String,
        gameTempo: null == gameTempo
            ? _value.gameTempo
            : gameTempo // ignore: cast_nullable_to_non_nullable
                  as String,
        unforcedErrors: null == unforcedErrors
            ? _value.unforcedErrors
            : unforcedErrors // ignore: cast_nullable_to_non_nullable
                  as int,
        superiorityChoices: null == superiorityChoices
            ? _value.superiorityChoices
            : superiorityChoices // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DecisionMakingImpl implements _DecisionMaking {
  const _$DecisionMakingImpl({
    this.underPressureChoices = '',
    this.gameTempo = '',
    this.unforcedErrors = 0,
    this.superiorityChoices = '',
  });

  factory _$DecisionMakingImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecisionMakingImplFromJson(json);

  @override
  @JsonKey()
  final String underPressureChoices;
  @override
  @JsonKey()
  final String gameTempo;
  @override
  @JsonKey()
  final int unforcedErrors;
  @override
  @JsonKey()
  final String superiorityChoices;

  @override
  String toString() {
    return 'DecisionMaking(underPressureChoices: $underPressureChoices, gameTempo: $gameTempo, unforcedErrors: $unforcedErrors, superiorityChoices: $superiorityChoices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecisionMakingImpl &&
            (identical(other.underPressureChoices, underPressureChoices) ||
                other.underPressureChoices == underPressureChoices) &&
            (identical(other.gameTempo, gameTempo) ||
                other.gameTempo == gameTempo) &&
            (identical(other.unforcedErrors, unforcedErrors) ||
                other.unforcedErrors == unforcedErrors) &&
            (identical(other.superiorityChoices, superiorityChoices) ||
                other.superiorityChoices == superiorityChoices));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    underPressureChoices,
    gameTempo,
    unforcedErrors,
    superiorityChoices,
  );

  /// Create a copy of DecisionMaking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecisionMakingImplCopyWith<_$DecisionMakingImpl> get copyWith =>
      __$$DecisionMakingImplCopyWithImpl<_$DecisionMakingImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DecisionMakingImplToJson(this);
  }
}

abstract class _DecisionMaking implements DecisionMaking {
  const factory _DecisionMaking({
    final String underPressureChoices,
    final String gameTempo,
    final int unforcedErrors,
    final String superiorityChoices,
  }) = _$DecisionMakingImpl;

  factory _DecisionMaking.fromJson(Map<String, dynamic> json) =
      _$DecisionMakingImpl.fromJson;

  @override
  String get underPressureChoices;
  @override
  String get gameTempo;
  @override
  int get unforcedErrors;
  @override
  String get superiorityChoices;

  /// Create a copy of DecisionMaking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecisionMakingImplCopyWith<_$DecisionMakingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IntensityAndTempo _$IntensityAndTempoFromJson(Map<String, dynamic> json) {
  return _IntensityAndTempo.fromJson(json);
}

/// @nodoc
mixin _$IntensityAndTempo {
  String get gameSpeed => throw _privateConstructorUsedError;
  double get actionsPerMinute => throw _privateConstructorUsedError;
  String get tempoChanges => throw _privateConstructorUsedError;
  String get pressure => throw _privateConstructorUsedError;

  /// Serializes this IntensityAndTempo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntensityAndTempo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntensityAndTempoCopyWith<IntensityAndTempo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntensityAndTempoCopyWith<$Res> {
  factory $IntensityAndTempoCopyWith(
    IntensityAndTempo value,
    $Res Function(IntensityAndTempo) then,
  ) = _$IntensityAndTempoCopyWithImpl<$Res, IntensityAndTempo>;
  @useResult
  $Res call({
    String gameSpeed,
    double actionsPerMinute,
    String tempoChanges,
    String pressure,
  });
}

/// @nodoc
class _$IntensityAndTempoCopyWithImpl<$Res, $Val extends IntensityAndTempo>
    implements $IntensityAndTempoCopyWith<$Res> {
  _$IntensityAndTempoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntensityAndTempo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSpeed = null,
    Object? actionsPerMinute = null,
    Object? tempoChanges = null,
    Object? pressure = null,
  }) {
    return _then(
      _value.copyWith(
            gameSpeed: null == gameSpeed
                ? _value.gameSpeed
                : gameSpeed // ignore: cast_nullable_to_non_nullable
                      as String,
            actionsPerMinute: null == actionsPerMinute
                ? _value.actionsPerMinute
                : actionsPerMinute // ignore: cast_nullable_to_non_nullable
                      as double,
            tempoChanges: null == tempoChanges
                ? _value.tempoChanges
                : tempoChanges // ignore: cast_nullable_to_non_nullable
                      as String,
            pressure: null == pressure
                ? _value.pressure
                : pressure // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IntensityAndTempoImplCopyWith<$Res>
    implements $IntensityAndTempoCopyWith<$Res> {
  factory _$$IntensityAndTempoImplCopyWith(
    _$IntensityAndTempoImpl value,
    $Res Function(_$IntensityAndTempoImpl) then,
  ) = __$$IntensityAndTempoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String gameSpeed,
    double actionsPerMinute,
    String tempoChanges,
    String pressure,
  });
}

/// @nodoc
class __$$IntensityAndTempoImplCopyWithImpl<$Res>
    extends _$IntensityAndTempoCopyWithImpl<$Res, _$IntensityAndTempoImpl>
    implements _$$IntensityAndTempoImplCopyWith<$Res> {
  __$$IntensityAndTempoImplCopyWithImpl(
    _$IntensityAndTempoImpl _value,
    $Res Function(_$IntensityAndTempoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IntensityAndTempo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSpeed = null,
    Object? actionsPerMinute = null,
    Object? tempoChanges = null,
    Object? pressure = null,
  }) {
    return _then(
      _$IntensityAndTempoImpl(
        gameSpeed: null == gameSpeed
            ? _value.gameSpeed
            : gameSpeed // ignore: cast_nullable_to_non_nullable
                  as String,
        actionsPerMinute: null == actionsPerMinute
            ? _value.actionsPerMinute
            : actionsPerMinute // ignore: cast_nullable_to_non_nullable
                  as double,
        tempoChanges: null == tempoChanges
            ? _value.tempoChanges
            : tempoChanges // ignore: cast_nullable_to_non_nullable
                  as String,
        pressure: null == pressure
            ? _value.pressure
            : pressure // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IntensityAndTempoImpl implements _IntensityAndTempo {
  const _$IntensityAndTempoImpl({
    this.gameSpeed = '',
    this.actionsPerMinute = 0.0,
    this.tempoChanges = '',
    this.pressure = '',
  });

  factory _$IntensityAndTempoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntensityAndTempoImplFromJson(json);

  @override
  @JsonKey()
  final String gameSpeed;
  @override
  @JsonKey()
  final double actionsPerMinute;
  @override
  @JsonKey()
  final String tempoChanges;
  @override
  @JsonKey()
  final String pressure;

  @override
  String toString() {
    return 'IntensityAndTempo(gameSpeed: $gameSpeed, actionsPerMinute: $actionsPerMinute, tempoChanges: $tempoChanges, pressure: $pressure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntensityAndTempoImpl &&
            (identical(other.gameSpeed, gameSpeed) ||
                other.gameSpeed == gameSpeed) &&
            (identical(other.actionsPerMinute, actionsPerMinute) ||
                other.actionsPerMinute == actionsPerMinute) &&
            (identical(other.tempoChanges, tempoChanges) ||
                other.tempoChanges == tempoChanges) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    gameSpeed,
    actionsPerMinute,
    tempoChanges,
    pressure,
  );

  /// Create a copy of IntensityAndTempo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntensityAndTempoImplCopyWith<_$IntensityAndTempoImpl> get copyWith =>
      __$$IntensityAndTempoImplCopyWithImpl<_$IntensityAndTempoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IntensityAndTempoImplToJson(this);
  }
}

abstract class _IntensityAndTempo implements IntensityAndTempo {
  const factory _IntensityAndTempo({
    final String gameSpeed,
    final double actionsPerMinute,
    final String tempoChanges,
    final String pressure,
  }) = _$IntensityAndTempoImpl;

  factory _IntensityAndTempo.fromJson(Map<String, dynamic> json) =
      _$IntensityAndTempoImpl.fromJson;

  @override
  String get gameSpeed;
  @override
  double get actionsPerMinute;
  @override
  String get tempoChanges;
  @override
  String get pressure;

  /// Create a copy of IntensityAndTempo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntensityAndTempoImplCopyWith<_$IntensityAndTempoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AdvancedIndicators _$AdvancedIndicatorsFromJson(Map<String, dynamic> json) {
  return _AdvancedIndicators.fromJson(json);
}

/// @nodoc
mixin _$AdvancedIndicators {
  double get teamXG => throw _privateConstructorUsedError;
  double get teamXA => throw _privateConstructorUsedError;
  double get ppda => throw _privateConstructorUsedError;
  double get possessionsPerShot => throw _privateConstructorUsedError;
  int get offensiveEfficiencyPercent => throw _privateConstructorUsedError;
  int get defensiveEfficiencyPercent => throw _privateConstructorUsedError;

  /// Serializes this AdvancedIndicators to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvancedIndicators
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvancedIndicatorsCopyWith<AdvancedIndicators> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvancedIndicatorsCopyWith<$Res> {
  factory $AdvancedIndicatorsCopyWith(
    AdvancedIndicators value,
    $Res Function(AdvancedIndicators) then,
  ) = _$AdvancedIndicatorsCopyWithImpl<$Res, AdvancedIndicators>;
  @useResult
  $Res call({
    double teamXG,
    double teamXA,
    double ppda,
    double possessionsPerShot,
    int offensiveEfficiencyPercent,
    int defensiveEfficiencyPercent,
  });
}

/// @nodoc
class _$AdvancedIndicatorsCopyWithImpl<$Res, $Val extends AdvancedIndicators>
    implements $AdvancedIndicatorsCopyWith<$Res> {
  _$AdvancedIndicatorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvancedIndicators
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamXG = null,
    Object? teamXA = null,
    Object? ppda = null,
    Object? possessionsPerShot = null,
    Object? offensiveEfficiencyPercent = null,
    Object? defensiveEfficiencyPercent = null,
  }) {
    return _then(
      _value.copyWith(
            teamXG: null == teamXG
                ? _value.teamXG
                : teamXG // ignore: cast_nullable_to_non_nullable
                      as double,
            teamXA: null == teamXA
                ? _value.teamXA
                : teamXA // ignore: cast_nullable_to_non_nullable
                      as double,
            ppda: null == ppda
                ? _value.ppda
                : ppda // ignore: cast_nullable_to_non_nullable
                      as double,
            possessionsPerShot: null == possessionsPerShot
                ? _value.possessionsPerShot
                : possessionsPerShot // ignore: cast_nullable_to_non_nullable
                      as double,
            offensiveEfficiencyPercent: null == offensiveEfficiencyPercent
                ? _value.offensiveEfficiencyPercent
                : offensiveEfficiencyPercent // ignore: cast_nullable_to_non_nullable
                      as int,
            defensiveEfficiencyPercent: null == defensiveEfficiencyPercent
                ? _value.defensiveEfficiencyPercent
                : defensiveEfficiencyPercent // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AdvancedIndicatorsImplCopyWith<$Res>
    implements $AdvancedIndicatorsCopyWith<$Res> {
  factory _$$AdvancedIndicatorsImplCopyWith(
    _$AdvancedIndicatorsImpl value,
    $Res Function(_$AdvancedIndicatorsImpl) then,
  ) = __$$AdvancedIndicatorsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    double teamXG,
    double teamXA,
    double ppda,
    double possessionsPerShot,
    int offensiveEfficiencyPercent,
    int defensiveEfficiencyPercent,
  });
}

/// @nodoc
class __$$AdvancedIndicatorsImplCopyWithImpl<$Res>
    extends _$AdvancedIndicatorsCopyWithImpl<$Res, _$AdvancedIndicatorsImpl>
    implements _$$AdvancedIndicatorsImplCopyWith<$Res> {
  __$$AdvancedIndicatorsImplCopyWithImpl(
    _$AdvancedIndicatorsImpl _value,
    $Res Function(_$AdvancedIndicatorsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AdvancedIndicators
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamXG = null,
    Object? teamXA = null,
    Object? ppda = null,
    Object? possessionsPerShot = null,
    Object? offensiveEfficiencyPercent = null,
    Object? defensiveEfficiencyPercent = null,
  }) {
    return _then(
      _$AdvancedIndicatorsImpl(
        teamXG: null == teamXG
            ? _value.teamXG
            : teamXG // ignore: cast_nullable_to_non_nullable
                  as double,
        teamXA: null == teamXA
            ? _value.teamXA
            : teamXA // ignore: cast_nullable_to_non_nullable
                  as double,
        ppda: null == ppda
            ? _value.ppda
            : ppda // ignore: cast_nullable_to_non_nullable
                  as double,
        possessionsPerShot: null == possessionsPerShot
            ? _value.possessionsPerShot
            : possessionsPerShot // ignore: cast_nullable_to_non_nullable
                  as double,
        offensiveEfficiencyPercent: null == offensiveEfficiencyPercent
            ? _value.offensiveEfficiencyPercent
            : offensiveEfficiencyPercent // ignore: cast_nullable_to_non_nullable
                  as int,
        defensiveEfficiencyPercent: null == defensiveEfficiencyPercent
            ? _value.defensiveEfficiencyPercent
            : defensiveEfficiencyPercent // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvancedIndicatorsImpl implements _AdvancedIndicators {
  const _$AdvancedIndicatorsImpl({
    this.teamXG = 0.0,
    this.teamXA = 0.0,
    this.ppda = 0.0,
    this.possessionsPerShot = 0.0,
    this.offensiveEfficiencyPercent = 0,
    this.defensiveEfficiencyPercent = 0,
  });

  factory _$AdvancedIndicatorsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvancedIndicatorsImplFromJson(json);

  @override
  @JsonKey()
  final double teamXG;
  @override
  @JsonKey()
  final double teamXA;
  @override
  @JsonKey()
  final double ppda;
  @override
  @JsonKey()
  final double possessionsPerShot;
  @override
  @JsonKey()
  final int offensiveEfficiencyPercent;
  @override
  @JsonKey()
  final int defensiveEfficiencyPercent;

  @override
  String toString() {
    return 'AdvancedIndicators(teamXG: $teamXG, teamXA: $teamXA, ppda: $ppda, possessionsPerShot: $possessionsPerShot, offensiveEfficiencyPercent: $offensiveEfficiencyPercent, defensiveEfficiencyPercent: $defensiveEfficiencyPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvancedIndicatorsImpl &&
            (identical(other.teamXG, teamXG) || other.teamXG == teamXG) &&
            (identical(other.teamXA, teamXA) || other.teamXA == teamXA) &&
            (identical(other.ppda, ppda) || other.ppda == ppda) &&
            (identical(other.possessionsPerShot, possessionsPerShot) ||
                other.possessionsPerShot == possessionsPerShot) &&
            (identical(
                  other.offensiveEfficiencyPercent,
                  offensiveEfficiencyPercent,
                ) ||
                other.offensiveEfficiencyPercent ==
                    offensiveEfficiencyPercent) &&
            (identical(
                  other.defensiveEfficiencyPercent,
                  defensiveEfficiencyPercent,
                ) ||
                other.defensiveEfficiencyPercent ==
                    defensiveEfficiencyPercent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    teamXG,
    teamXA,
    ppda,
    possessionsPerShot,
    offensiveEfficiencyPercent,
    defensiveEfficiencyPercent,
  );

  /// Create a copy of AdvancedIndicators
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvancedIndicatorsImplCopyWith<_$AdvancedIndicatorsImpl> get copyWith =>
      __$$AdvancedIndicatorsImplCopyWithImpl<_$AdvancedIndicatorsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvancedIndicatorsImplToJson(this);
  }
}

abstract class _AdvancedIndicators implements AdvancedIndicators {
  const factory _AdvancedIndicators({
    final double teamXG,
    final double teamXA,
    final double ppda,
    final double possessionsPerShot,
    final int offensiveEfficiencyPercent,
    final int defensiveEfficiencyPercent,
  }) = _$AdvancedIndicatorsImpl;

  factory _AdvancedIndicators.fromJson(Map<String, dynamic> json) =
      _$AdvancedIndicatorsImpl.fromJson;

  @override
  double get teamXG;
  @override
  double get teamXA;
  @override
  double get ppda;
  @override
  double get possessionsPerShot;
  @override
  int get offensiveEfficiencyPercent;
  @override
  int get defensiveEfficiencyPercent;

  /// Create a copy of AdvancedIndicators
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvancedIndicatorsImplCopyWith<_$AdvancedIndicatorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ScoutInsights _$ScoutInsightsFromJson(Map<String, dynamic> json) {
  return _ScoutInsights.fromJson(json);
}

/// @nodoc
mixin _$ScoutInsights {
  List<String> get lineBreakers => throw _privateConstructorUsedError;
  List<String> get superiorityCreators => throw _privateConstructorUsedError;
  List<String> get gameSlowers => throw _privateConstructorUsedError;
  List<String> get gameAccelerators => throw _privateConstructorUsedError;
  List<String> get recurrentPatterns => throw _privateConstructorUsedError;
  List<String> get weaknesses => throw _privateConstructorUsedError;

  /// Serializes this ScoutInsights to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScoutInsights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScoutInsightsCopyWith<ScoutInsights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoutInsightsCopyWith<$Res> {
  factory $ScoutInsightsCopyWith(
    ScoutInsights value,
    $Res Function(ScoutInsights) then,
  ) = _$ScoutInsightsCopyWithImpl<$Res, ScoutInsights>;
  @useResult
  $Res call({
    List<String> lineBreakers,
    List<String> superiorityCreators,
    List<String> gameSlowers,
    List<String> gameAccelerators,
    List<String> recurrentPatterns,
    List<String> weaknesses,
  });
}

/// @nodoc
class _$ScoutInsightsCopyWithImpl<$Res, $Val extends ScoutInsights>
    implements $ScoutInsightsCopyWith<$Res> {
  _$ScoutInsightsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScoutInsights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineBreakers = null,
    Object? superiorityCreators = null,
    Object? gameSlowers = null,
    Object? gameAccelerators = null,
    Object? recurrentPatterns = null,
    Object? weaknesses = null,
  }) {
    return _then(
      _value.copyWith(
            lineBreakers: null == lineBreakers
                ? _value.lineBreakers
                : lineBreakers // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            superiorityCreators: null == superiorityCreators
                ? _value.superiorityCreators
                : superiorityCreators // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            gameSlowers: null == gameSlowers
                ? _value.gameSlowers
                : gameSlowers // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            gameAccelerators: null == gameAccelerators
                ? _value.gameAccelerators
                : gameAccelerators // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            recurrentPatterns: null == recurrentPatterns
                ? _value.recurrentPatterns
                : recurrentPatterns // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            weaknesses: null == weaknesses
                ? _value.weaknesses
                : weaknesses // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScoutInsightsImplCopyWith<$Res>
    implements $ScoutInsightsCopyWith<$Res> {
  factory _$$ScoutInsightsImplCopyWith(
    _$ScoutInsightsImpl value,
    $Res Function(_$ScoutInsightsImpl) then,
  ) = __$$ScoutInsightsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> lineBreakers,
    List<String> superiorityCreators,
    List<String> gameSlowers,
    List<String> gameAccelerators,
    List<String> recurrentPatterns,
    List<String> weaknesses,
  });
}

/// @nodoc
class __$$ScoutInsightsImplCopyWithImpl<$Res>
    extends _$ScoutInsightsCopyWithImpl<$Res, _$ScoutInsightsImpl>
    implements _$$ScoutInsightsImplCopyWith<$Res> {
  __$$ScoutInsightsImplCopyWithImpl(
    _$ScoutInsightsImpl _value,
    $Res Function(_$ScoutInsightsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScoutInsights
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lineBreakers = null,
    Object? superiorityCreators = null,
    Object? gameSlowers = null,
    Object? gameAccelerators = null,
    Object? recurrentPatterns = null,
    Object? weaknesses = null,
  }) {
    return _then(
      _$ScoutInsightsImpl(
        lineBreakers: null == lineBreakers
            ? _value._lineBreakers
            : lineBreakers // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        superiorityCreators: null == superiorityCreators
            ? _value._superiorityCreators
            : superiorityCreators // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        gameSlowers: null == gameSlowers
            ? _value._gameSlowers
            : gameSlowers // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        gameAccelerators: null == gameAccelerators
            ? _value._gameAccelerators
            : gameAccelerators // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        recurrentPatterns: null == recurrentPatterns
            ? _value._recurrentPatterns
            : recurrentPatterns // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        weaknesses: null == weaknesses
            ? _value._weaknesses
            : weaknesses // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScoutInsightsImpl implements _ScoutInsights {
  const _$ScoutInsightsImpl({
    final List<String> lineBreakers = const [],
    final List<String> superiorityCreators = const [],
    final List<String> gameSlowers = const [],
    final List<String> gameAccelerators = const [],
    final List<String> recurrentPatterns = const [],
    final List<String> weaknesses = const [],
  }) : _lineBreakers = lineBreakers,
       _superiorityCreators = superiorityCreators,
       _gameSlowers = gameSlowers,
       _gameAccelerators = gameAccelerators,
       _recurrentPatterns = recurrentPatterns,
       _weaknesses = weaknesses;

  factory _$ScoutInsightsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScoutInsightsImplFromJson(json);

  final List<String> _lineBreakers;
  @override
  @JsonKey()
  List<String> get lineBreakers {
    if (_lineBreakers is EqualUnmodifiableListView) return _lineBreakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineBreakers);
  }

  final List<String> _superiorityCreators;
  @override
  @JsonKey()
  List<String> get superiorityCreators {
    if (_superiorityCreators is EqualUnmodifiableListView)
      return _superiorityCreators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_superiorityCreators);
  }

  final List<String> _gameSlowers;
  @override
  @JsonKey()
  List<String> get gameSlowers {
    if (_gameSlowers is EqualUnmodifiableListView) return _gameSlowers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameSlowers);
  }

  final List<String> _gameAccelerators;
  @override
  @JsonKey()
  List<String> get gameAccelerators {
    if (_gameAccelerators is EqualUnmodifiableListView)
      return _gameAccelerators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameAccelerators);
  }

  final List<String> _recurrentPatterns;
  @override
  @JsonKey()
  List<String> get recurrentPatterns {
    if (_recurrentPatterns is EqualUnmodifiableListView)
      return _recurrentPatterns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recurrentPatterns);
  }

  final List<String> _weaknesses;
  @override
  @JsonKey()
  List<String> get weaknesses {
    if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaknesses);
  }

  @override
  String toString() {
    return 'ScoutInsights(lineBreakers: $lineBreakers, superiorityCreators: $superiorityCreators, gameSlowers: $gameSlowers, gameAccelerators: $gameAccelerators, recurrentPatterns: $recurrentPatterns, weaknesses: $weaknesses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScoutInsightsImpl &&
            const DeepCollectionEquality().equals(
              other._lineBreakers,
              _lineBreakers,
            ) &&
            const DeepCollectionEquality().equals(
              other._superiorityCreators,
              _superiorityCreators,
            ) &&
            const DeepCollectionEquality().equals(
              other._gameSlowers,
              _gameSlowers,
            ) &&
            const DeepCollectionEquality().equals(
              other._gameAccelerators,
              _gameAccelerators,
            ) &&
            const DeepCollectionEquality().equals(
              other._recurrentPatterns,
              _recurrentPatterns,
            ) &&
            const DeepCollectionEquality().equals(
              other._weaknesses,
              _weaknesses,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_lineBreakers),
    const DeepCollectionEquality().hash(_superiorityCreators),
    const DeepCollectionEquality().hash(_gameSlowers),
    const DeepCollectionEquality().hash(_gameAccelerators),
    const DeepCollectionEquality().hash(_recurrentPatterns),
    const DeepCollectionEquality().hash(_weaknesses),
  );

  /// Create a copy of ScoutInsights
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScoutInsightsImplCopyWith<_$ScoutInsightsImpl> get copyWith =>
      __$$ScoutInsightsImplCopyWithImpl<_$ScoutInsightsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScoutInsightsImplToJson(this);
  }
}

abstract class _ScoutInsights implements ScoutInsights {
  const factory _ScoutInsights({
    final List<String> lineBreakers,
    final List<String> superiorityCreators,
    final List<String> gameSlowers,
    final List<String> gameAccelerators,
    final List<String> recurrentPatterns,
    final List<String> weaknesses,
  }) = _$ScoutInsightsImpl;

  factory _ScoutInsights.fromJson(Map<String, dynamic> json) =
      _$ScoutInsightsImpl.fromJson;

  @override
  List<String> get lineBreakers;
  @override
  List<String> get superiorityCreators;
  @override
  List<String> get gameSlowers;
  @override
  List<String> get gameAccelerators;
  @override
  List<String> get recurrentPatterns;
  @override
  List<String> get weaknesses;

  /// Create a copy of ScoutInsights
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScoutInsightsImplCopyWith<_$ScoutInsightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportSummary _$ReportSummaryFromJson(Map<String, dynamic> json) {
  return _ReportSummary.fromJson(json);
}

/// @nodoc
mixin _$ReportSummary {
  String get overview => throw _privateConstructorUsedError;
  String get analysis => throw _privateConstructorUsedError;
  String get strengthsAndWeaknesses => throw _privateConstructorUsedError;
  String get conclusions => throw _privateConstructorUsedError;

  /// Serializes this ReportSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportSummaryCopyWith<ReportSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportSummaryCopyWith<$Res> {
  factory $ReportSummaryCopyWith(
    ReportSummary value,
    $Res Function(ReportSummary) then,
  ) = _$ReportSummaryCopyWithImpl<$Res, ReportSummary>;
  @useResult
  $Res call({
    String overview,
    String analysis,
    String strengthsAndWeaknesses,
    String conclusions,
  });
}

/// @nodoc
class _$ReportSummaryCopyWithImpl<$Res, $Val extends ReportSummary>
    implements $ReportSummaryCopyWith<$Res> {
  _$ReportSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? analysis = null,
    Object? strengthsAndWeaknesses = null,
    Object? conclusions = null,
  }) {
    return _then(
      _value.copyWith(
            overview: null == overview
                ? _value.overview
                : overview // ignore: cast_nullable_to_non_nullable
                      as String,
            analysis: null == analysis
                ? _value.analysis
                : analysis // ignore: cast_nullable_to_non_nullable
                      as String,
            strengthsAndWeaknesses: null == strengthsAndWeaknesses
                ? _value.strengthsAndWeaknesses
                : strengthsAndWeaknesses // ignore: cast_nullable_to_non_nullable
                      as String,
            conclusions: null == conclusions
                ? _value.conclusions
                : conclusions // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportSummaryImplCopyWith<$Res>
    implements $ReportSummaryCopyWith<$Res> {
  factory _$$ReportSummaryImplCopyWith(
    _$ReportSummaryImpl value,
    $Res Function(_$ReportSummaryImpl) then,
  ) = __$$ReportSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String overview,
    String analysis,
    String strengthsAndWeaknesses,
    String conclusions,
  });
}

/// @nodoc
class __$$ReportSummaryImplCopyWithImpl<$Res>
    extends _$ReportSummaryCopyWithImpl<$Res, _$ReportSummaryImpl>
    implements _$$ReportSummaryImplCopyWith<$Res> {
  __$$ReportSummaryImplCopyWithImpl(
    _$ReportSummaryImpl _value,
    $Res Function(_$ReportSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overview = null,
    Object? analysis = null,
    Object? strengthsAndWeaknesses = null,
    Object? conclusions = null,
  }) {
    return _then(
      _$ReportSummaryImpl(
        overview: null == overview
            ? _value.overview
            : overview // ignore: cast_nullable_to_non_nullable
                  as String,
        analysis: null == analysis
            ? _value.analysis
            : analysis // ignore: cast_nullable_to_non_nullable
                  as String,
        strengthsAndWeaknesses: null == strengthsAndWeaknesses
            ? _value.strengthsAndWeaknesses
            : strengthsAndWeaknesses // ignore: cast_nullable_to_non_nullable
                  as String,
        conclusions: null == conclusions
            ? _value.conclusions
            : conclusions // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportSummaryImpl implements _ReportSummary {
  const _$ReportSummaryImpl({
    this.overview = '',
    this.analysis = '',
    this.strengthsAndWeaknesses = '',
    this.conclusions = '',
  });

  factory _$ReportSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportSummaryImplFromJson(json);

  @override
  @JsonKey()
  final String overview;
  @override
  @JsonKey()
  final String analysis;
  @override
  @JsonKey()
  final String strengthsAndWeaknesses;
  @override
  @JsonKey()
  final String conclusions;

  @override
  String toString() {
    return 'ReportSummary(overview: $overview, analysis: $analysis, strengthsAndWeaknesses: $strengthsAndWeaknesses, conclusions: $conclusions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportSummaryImpl &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis) &&
            (identical(other.strengthsAndWeaknesses, strengthsAndWeaknesses) ||
                other.strengthsAndWeaknesses == strengthsAndWeaknesses) &&
            (identical(other.conclusions, conclusions) ||
                other.conclusions == conclusions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    overview,
    analysis,
    strengthsAndWeaknesses,
    conclusions,
  );

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportSummaryImplCopyWith<_$ReportSummaryImpl> get copyWith =>
      __$$ReportSummaryImplCopyWithImpl<_$ReportSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportSummaryImplToJson(this);
  }
}

abstract class _ReportSummary implements ReportSummary {
  const factory _ReportSummary({
    final String overview,
    final String analysis,
    final String strengthsAndWeaknesses,
    final String conclusions,
  }) = _$ReportSummaryImpl;

  factory _ReportSummary.fromJson(Map<String, dynamic> json) =
      _$ReportSummaryImpl.fromJson;

  @override
  String get overview;
  @override
  String get analysis;
  @override
  String get strengthsAndWeaknesses;
  @override
  String get conclusions;

  /// Create a copy of ReportSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportSummaryImplCopyWith<_$ReportSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
