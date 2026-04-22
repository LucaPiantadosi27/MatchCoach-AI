// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scout_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScoutStatisticsImpl _$$ScoutStatisticsImplFromJson(
  Map<String, dynamic> json,
) => _$ScoutStatisticsImpl(
  homeTeam: json['homeTeam'] == null
      ? const TeamStats()
      : TeamStats.fromJson(json['homeTeam'] as Map<String, dynamic>),
  awayTeam: json['awayTeam'] == null
      ? const TeamStats()
      : TeamStats.fromJson(json['awayTeam'] as Map<String, dynamic>),
  reportSummary: json['reportSummary'] == null
      ? const ReportSummary()
      : ReportSummary.fromJson(json['reportSummary'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ScoutStatisticsImplToJson(
  _$ScoutStatisticsImpl instance,
) => <String, dynamic>{
  'homeTeam': instance.homeTeam.toJson(),
  'awayTeam': instance.awayTeam.toJson(),
  'reportSummary': instance.reportSummary.toJson(),
};

_$TeamStatsImpl _$$TeamStatsImplFromJson(
  Map<String, dynamic> json,
) => _$TeamStatsImpl(
  teamName: json['teamName'] as String? ?? '',
  possessionAndBuildUp: json['possessionAndBuildUp'] == null
      ? const PossessionAndBuildUp()
      : PossessionAndBuildUp.fromJson(
          json['possessionAndBuildUp'] as Map<String, dynamic>,
        ),
  offensivePhase: json['offensivePhase'] == null
      ? const OffensivePhase()
      : OffensivePhase.fromJson(json['offensivePhase'] as Map<String, dynamic>),
  defensivePhase: json['defensivePhase'] == null
      ? const DefensivePhase()
      : DefensivePhase.fromJson(json['defensivePhase'] as Map<String, dynamic>),
  transitions: json['transitions'] == null
      ? const Transitions()
      : Transitions.fromJson(json['transitions'] as Map<String, dynamic>),
  playersAnalysis:
      (json['playersAnalysis'] as List<dynamic>?)
          ?.map((e) => PlayerAnalysis.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  spatialAnalysis: json['spatialAnalysis'] == null
      ? const SpatialAnalysis()
      : SpatialAnalysis.fromJson(
          json['spatialAnalysis'] as Map<String, dynamic>,
        ),
  teamTactics: json['teamTactics'] == null
      ? const TeamTactics()
      : TeamTactics.fromJson(json['teamTactics'] as Map<String, dynamic>),
  setPieces: json['setPieces'] == null
      ? const SetPieces()
      : SetPieces.fromJson(json['setPieces'] as Map<String, dynamic>),
  decisionMaking: json['decisionMaking'] == null
      ? const DecisionMaking()
      : DecisionMaking.fromJson(json['decisionMaking'] as Map<String, dynamic>),
  intensityAndTempo: json['intensityAndTempo'] == null
      ? const IntensityAndTempo()
      : IntensityAndTempo.fromJson(
          json['intensityAndTempo'] as Map<String, dynamic>,
        ),
  advancedIndicators: json['advancedIndicators'] == null
      ? const AdvancedIndicators()
      : AdvancedIndicators.fromJson(
          json['advancedIndicators'] as Map<String, dynamic>,
        ),
  scoutInsights: json['scoutInsights'] == null
      ? const ScoutInsights()
      : ScoutInsights.fromJson(json['scoutInsights'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TeamStatsImplToJson(
  _$TeamStatsImpl instance,
) => <String, dynamic>{
  'teamName': instance.teamName,
  'possessionAndBuildUp': instance.possessionAndBuildUp.toJson(),
  'offensivePhase': instance.offensivePhase.toJson(),
  'defensivePhase': instance.defensivePhase.toJson(),
  'transitions': instance.transitions.toJson(),
  'playersAnalysis': instance.playersAnalysis.map((e) => e.toJson()).toList(),
  'spatialAnalysis': instance.spatialAnalysis.toJson(),
  'teamTactics': instance.teamTactics.toJson(),
  'setPieces': instance.setPieces.toJson(),
  'decisionMaking': instance.decisionMaking.toJson(),
  'intensityAndTempo': instance.intensityAndTempo.toJson(),
  'advancedIndicators': instance.advancedIndicators.toJson(),
  'scoutInsights': instance.scoutInsights.toJson(),
};

_$PossessionAndBuildUpImpl _$$PossessionAndBuildUpImplFromJson(
  Map<String, dynamic> json,
) => _$PossessionAndBuildUpImpl(
  totalPossessionPercent:
      (json['totalPossessionPercent'] as num?)?.toInt() ?? 50,
  possessionByZone: json['possessionByZone'] == null
      ? const PossessionByZone()
      : PossessionByZone.fromJson(
          json['possessionByZone'] as Map<String, dynamic>,
        ),
  averagePossessionTimeSeconds:
      (json['averagePossessionTimeSeconds'] as num?)?.toDouble() ?? 0.0,
  totalPossessions: (json['totalPossessions'] as num?)?.toInt() ?? 0,
  averagePassesPerPossession:
      (json['averagePassesPerPossession'] as num?)?.toDouble() ?? 0.0,
  possessionsType: json['possessionsType'] == null
      ? const PossessionsType()
      : PossessionsType.fromJson(
          json['possessionsType'] as Map<String, dynamic>,
        ),
  passes: json['passes'] == null
      ? const Passes()
      : Passes.fromJson(json['passes'] as Map<String, dynamic>),
  progression: json['progression'] == null
      ? const Progression()
      : Progression.fromJson(json['progression'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PossessionAndBuildUpImplToJson(
  _$PossessionAndBuildUpImpl instance,
) => <String, dynamic>{
  'totalPossessionPercent': instance.totalPossessionPercent,
  'possessionByZone': instance.possessionByZone,
  'averagePossessionTimeSeconds': instance.averagePossessionTimeSeconds,
  'totalPossessions': instance.totalPossessions,
  'averagePassesPerPossession': instance.averagePassesPerPossession,
  'possessionsType': instance.possessionsType,
  'passes': instance.passes,
  'progression': instance.progression,
};

_$PossessionByZoneImpl _$$PossessionByZoneImplFromJson(
  Map<String, dynamic> json,
) => _$PossessionByZoneImpl(
  defense: (json['defense'] as num?)?.toInt() ?? 0,
  midfield: (json['midfield'] as num?)?.toInt() ?? 0,
  attack: (json['attack'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$PossessionByZoneImplToJson(
  _$PossessionByZoneImpl instance,
) => <String, dynamic>{
  'defense': instance.defense,
  'midfield': instance.midfield,
  'attack': instance.attack,
};

_$PossessionsTypeImpl _$$PossessionsTypeImplFromJson(
  Map<String, dynamic> json,
) => _$PossessionsTypeImpl(
  sterile: (json['sterile'] as num?)?.toInt() ?? 0,
  productive: (json['productive'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$PossessionsTypeImplToJson(
  _$PossessionsTypeImpl instance,
) => <String, dynamic>{
  'sterile': instance.sterile,
  'productive': instance.productive,
};

_$PassesImpl _$$PassesImplFromJson(Map<String, dynamic> json) => _$PassesImpl(
  total: (json['total'] as num?)?.toInt() ?? 0,
  accuracyPercent: (json['accuracyPercent'] as num?)?.toInt() ?? 0,
  direction: json['direction'] == null
      ? const PassDirection()
      : PassDirection.fromJson(json['direction'] as Map<String, dynamic>),
  betweenLines: (json['betweenLines'] as num?)?.toInt() ?? 0,
  keyPasses: (json['keyPasses'] as num?)?.toInt() ?? 0,
  underPressure: (json['underPressure'] as num?)?.toInt() ?? 0,
  oneTouch: (json['oneTouch'] as num?)?.toInt() ?? 0,
  twoPlusTouches: (json['twoPlusTouches'] as num?)?.toInt() ?? 0,
  longSequences: (json['longSequences'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$PassesImplToJson(_$PassesImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'accuracyPercent': instance.accuracyPercent,
      'direction': instance.direction,
      'betweenLines': instance.betweenLines,
      'keyPasses': instance.keyPasses,
      'underPressure': instance.underPressure,
      'oneTouch': instance.oneTouch,
      'twoPlusTouches': instance.twoPlusTouches,
      'longSequences': instance.longSequences,
    };

_$PassDirectionImpl _$$PassDirectionImplFromJson(Map<String, dynamic> json) =>
    _$PassDirectionImpl(
      forward: (json['forward'] as num?)?.toInt() ?? 0,
      lateral: (json['lateral'] as num?)?.toInt() ?? 0,
      backward: (json['backward'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PassDirectionImplToJson(_$PassDirectionImpl instance) =>
    <String, dynamic>{
      'forward': instance.forward,
      'lateral': instance.lateral,
      'backward': instance.backward,
    };

_$ProgressionImpl _$$ProgressionImplFromJson(Map<String, dynamic> json) =>
    _$ProgressionImpl(
      ballCarries: (json['ballCarries'] as num?)?.toInt() ?? 0,
      dribbles: json['dribbles'] == null
          ? const Dribbles()
          : Dribbles.fromJson(json['dribbles'] as Map<String, dynamic>),
      defensiveLineBreaks: (json['defensiveLineBreaks'] as num?)?.toInt() ?? 0,
      finalThirdEntries: (json['finalThirdEntries'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ProgressionImplToJson(_$ProgressionImpl instance) =>
    <String, dynamic>{
      'ballCarries': instance.ballCarries,
      'dribbles': instance.dribbles,
      'defensiveLineBreaks': instance.defensiveLineBreaks,
      'finalThirdEntries': instance.finalThirdEntries,
    };

_$DribblesImpl _$$DribblesImplFromJson(Map<String, dynamic> json) =>
    _$DribblesImpl(
      successful: (json['successful'] as num?)?.toInt() ?? 0,
      failed: (json['failed'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DribblesImplToJson(_$DribblesImpl instance) =>
    <String, dynamic>{
      'successful': instance.successful,
      'failed': instance.failed,
    };

_$OffensivePhaseImpl _$$OffensivePhaseImplFromJson(Map<String, dynamic> json) =>
    _$OffensivePhaseImpl(
      shots: json['shots'] == null
          ? const Shots()
          : Shots.fromJson(json['shots'] as Map<String, dynamic>),
      creation: json['creation'] == null
          ? const Creation()
          : Creation.fromJson(json['creation'] as Map<String, dynamic>),
      mostDangerousPlayer: json['mostDangerousPlayer'] == null
          ? const MostDangerousPlayer()
          : MostDangerousPlayer.fromJson(
              json['mostDangerousPlayer'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$OffensivePhaseImplToJson(
  _$OffensivePhaseImpl instance,
) => <String, dynamic>{
  'shots': instance.shots,
  'creation': instance.creation,
  'mostDangerousPlayer': instance.mostDangerousPlayer,
};

_$ShotsImpl _$$ShotsImplFromJson(Map<String, dynamic> json) => _$ShotsImpl(
  total: (json['total'] as num?)?.toInt() ?? 0,
  onTarget: (json['onTarget'] as num?)?.toInt() ?? 0,
  offTarget: (json['offTarget'] as num?)?.toInt() ?? 0,
  blocked: (json['blocked'] as num?)?.toInt() ?? 0,
  xG: (json['xG'] as num?)?.toDouble() ?? 0.0,
  insideArea: (json['insideArea'] as num?)?.toInt() ?? 0,
  outsideArea: (json['outsideArea'] as num?)?.toInt() ?? 0,
  fromSetPieces: (json['fromSetPieces'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$ShotsImplToJson(_$ShotsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'onTarget': instance.onTarget,
      'offTarget': instance.offTarget,
      'blocked': instance.blocked,
      'xG': instance.xG,
      'insideArea': instance.insideArea,
      'outsideArea': instance.outsideArea,
      'fromSetPieces': instance.fromSetPieces,
    };

_$CreationImpl _$$CreationImplFromJson(Map<String, dynamic> json) =>
    _$CreationImpl(
      chancesCreated: (json['chancesCreated'] as num?)?.toInt() ?? 0,
      bigChances: (json['bigChances'] as num?)?.toInt() ?? 0,
      assists: (json['assists'] as num?)?.toInt() ?? 0,
      preAssists: (json['preAssists'] as num?)?.toInt() ?? 0,
      offensive1v1Won: (json['offensive1v1Won'] as num?)?.toInt() ?? 0,
      offBallCuts: (json['offBallCuts'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CreationImplToJson(_$CreationImpl instance) =>
    <String, dynamic>{
      'chancesCreated': instance.chancesCreated,
      'bigChances': instance.bigChances,
      'assists': instance.assists,
      'preAssists': instance.preAssists,
      'offensive1v1Won': instance.offensive1v1Won,
      'offBallCuts': instance.offBallCuts,
    };

_$MostDangerousPlayerImpl _$$MostDangerousPlayerImplFromJson(
  Map<String, dynamic> json,
) => _$MostDangerousPlayerImpl(
  name: json['name'] as String? ?? '',
  shotsGenerated: (json['shotsGenerated'] as num?)?.toInt() ?? 0,
  individualXG: (json['individualXG'] as num?)?.toDouble() ?? 0.0,
  chancesCreated: (json['chancesCreated'] as num?)?.toInt() ?? 0,
  dribblesSuccessful: (json['dribblesSuccessful'] as num?)?.toInt() ?? 0,
  offensiveInvolvementPercent:
      (json['offensiveInvolvementPercent'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$MostDangerousPlayerImplToJson(
  _$MostDangerousPlayerImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'shotsGenerated': instance.shotsGenerated,
  'individualXG': instance.individualXG,
  'chancesCreated': instance.chancesCreated,
  'dribblesSuccessful': instance.dribblesSuccessful,
  'offensiveInvolvementPercent': instance.offensiveInvolvementPercent,
};

_$DefensivePhaseImpl _$$DefensivePhaseImplFromJson(Map<String, dynamic> json) =>
    _$DefensivePhaseImpl(
      pressureAndRecovery: json['pressureAndRecovery'] == null
          ? const PressureAndRecovery()
          : PressureAndRecovery.fromJson(
              json['pressureAndRecovery'] as Map<String, dynamic>,
            ),
      duels: json['duels'] == null
          ? const Duels()
          : Duels.fromJson(json['duels'] as Map<String, dynamic>),
      structure: json['structure'] == null
          ? const Structure()
          : Structure.fromJson(json['structure'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DefensivePhaseImplToJson(
  _$DefensivePhaseImpl instance,
) => <String, dynamic>{
  'pressureAndRecovery': instance.pressureAndRecovery,
  'duels': instance.duels,
  'structure': instance.structure,
};

_$PressureAndRecoveryImpl _$$PressureAndRecoveryImplFromJson(
  Map<String, dynamic> json,
) => _$PressureAndRecoveryImpl(
  ballRecoveries: (json['ballRecoveries'] as num?)?.toInt() ?? 0,
  recoveryZones: json['recoveryZones'] == null
      ? const RecoveryZones()
      : RecoveryZones.fromJson(json['recoveryZones'] as Map<String, dynamic>),
  pressing: json['pressing'] == null
      ? const Pressing()
      : Pressing.fromJson(json['pressing'] as Map<String, dynamic>),
  averageRecoveryTimeSeconds:
      (json['averageRecoveryTimeSeconds'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$$PressureAndRecoveryImplToJson(
  _$PressureAndRecoveryImpl instance,
) => <String, dynamic>{
  'ballRecoveries': instance.ballRecoveries,
  'recoveryZones': instance.recoveryZones,
  'pressing': instance.pressing,
  'averageRecoveryTimeSeconds': instance.averageRecoveryTimeSeconds,
};

_$RecoveryZonesImpl _$$RecoveryZonesImplFromJson(Map<String, dynamic> json) =>
    _$RecoveryZonesImpl(
      high: (json['high'] as num?)?.toInt() ?? 0,
      medium: (json['medium'] as num?)?.toInt() ?? 0,
      low: (json['low'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$RecoveryZonesImplToJson(_$RecoveryZonesImpl instance) =>
    <String, dynamic>{
      'high': instance.high,
      'medium': instance.medium,
      'low': instance.low,
    };

_$PressingImpl _$$PressingImplFromJson(Map<String, dynamic> json) =>
    _$PressingImpl(
      successful: (json['successful'] as num?)?.toInt() ?? 0,
      failed: (json['failed'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PressingImplToJson(_$PressingImpl instance) =>
    <String, dynamic>{
      'successful': instance.successful,
      'failed': instance.failed,
    };

_$DuelsImpl _$$DuelsImplFromJson(Map<String, dynamic> json) => _$DuelsImpl(
  defensiveWon: (json['defensiveWon'] as num?)?.toInt() ?? 0,
  defensiveLost: (json['defensiveLost'] as num?)?.toInt() ?? 0,
  successfulTackles: (json['successfulTackles'] as num?)?.toInt() ?? 0,
  interceptions: (json['interceptions'] as num?)?.toInt() ?? 0,
  shotsBlocked: (json['shotsBlocked'] as num?)?.toInt() ?? 0,
  defensive1v1: (json['defensive1v1'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$DuelsImplToJson(_$DuelsImpl instance) =>
    <String, dynamic>{
      'defensiveWon': instance.defensiveWon,
      'defensiveLost': instance.defensiveLost,
      'successfulTackles': instance.successfulTackles,
      'interceptions': instance.interceptions,
      'shotsBlocked': instance.shotsBlocked,
      'defensive1v1': instance.defensive1v1,
    };

_$StructureImpl _$$StructureImplFromJson(Map<String, dynamic> json) =>
    _$StructureImpl(
      defensiveLine: json['defensiveLine'] as String? ?? '',
      compactness: json['compactness'] as String? ?? '',
      defensiveRotations: json['defensiveRotations'] as String? ?? '',
      criticalErrors: (json['criticalErrors'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$StructureImplToJson(_$StructureImpl instance) =>
    <String, dynamic>{
      'defensiveLine': instance.defensiveLine,
      'compactness': instance.compactness,
      'defensiveRotations': instance.defensiveRotations,
      'criticalErrors': instance.criticalErrors,
    };

_$TransitionsImpl _$$TransitionsImplFromJson(
  Map<String, dynamic> json,
) => _$TransitionsImpl(
  offensive: json['offensive'] == null
      ? const OffensiveTransition()
      : OffensiveTransition.fromJson(json['offensive'] as Map<String, dynamic>),
  defensive: json['defensive'] == null
      ? const DefensiveTransition()
      : DefensiveTransition.fromJson(json['defensive'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TransitionsImplToJson(_$TransitionsImpl instance) =>
    <String, dynamic>{
      'offensive': instance.offensive,
      'defensive': instance.defensive,
    };

_$OffensiveTransitionImpl _$$OffensiveTransitionImplFromJson(
  Map<String, dynamic> json,
) => _$OffensiveTransitionImpl(
  counterAttacks: (json['counterAttacks'] as num?)?.toInt() ?? 0,
  developmentSpeed: json['developmentSpeed'] as String? ?? '',
  outcomes: json['outcomes'] == null
      ? const TransitionOutcomes()
      : TransitionOutcomes.fromJson(json['outcomes'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$OffensiveTransitionImplToJson(
  _$OffensiveTransitionImpl instance,
) => <String, dynamic>{
  'counterAttacks': instance.counterAttacks,
  'developmentSpeed': instance.developmentSpeed,
  'outcomes': instance.outcomes,
};

_$TransitionOutcomesImpl _$$TransitionOutcomesImplFromJson(
  Map<String, dynamic> json,
) => _$TransitionOutcomesImpl(
  shots: (json['shots'] as num?)?.toInt() ?? 0,
  goals: (json['goals'] as num?)?.toInt() ?? 0,
  lostBalls: (json['lostBalls'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$TransitionOutcomesImplToJson(
  _$TransitionOutcomesImpl instance,
) => <String, dynamic>{
  'shots': instance.shots,
  'goals': instance.goals,
  'lostBalls': instance.lostBalls,
};

_$DefensiveTransitionImpl _$$DefensiveTransitionImplFromJson(
  Map<String, dynamic> json,
) => _$DefensiveTransitionImpl(
  recoveryTimeSeconds: (json['recoveryTimeSeconds'] as num?)?.toDouble() ?? 0.0,
  tacticalFouls: (json['tacticalFouls'] as num?)?.toInt() ?? 0,
  goalsConcededInTransition:
      (json['goalsConcededInTransition'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$DefensiveTransitionImplToJson(
  _$DefensiveTransitionImpl instance,
) => <String, dynamic>{
  'recoveryTimeSeconds': instance.recoveryTimeSeconds,
  'tacticalFouls': instance.tacticalFouls,
  'goalsConcededInTransition': instance.goalsConcededInTransition,
};

_$PlayerAnalysisImpl _$$PlayerAnalysisImplFromJson(Map<String, dynamic> json) =>
    _$PlayerAnalysisImpl(
      name: json['name'] as String? ?? '',
      technical: json['technical'] == null
          ? const PlayerTechnical()
          : PlayerTechnical.fromJson(json['technical'] as Map<String, dynamic>),
      tactical: json['tactical'] == null
          ? const PlayerTactical()
          : PlayerTactical.fromJson(json['tactical'] as Map<String, dynamic>),
      efficiency: json['efficiency'] == null
          ? const PlayerEfficiency()
          : PlayerEfficiency.fromJson(
              json['efficiency'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$PlayerAnalysisImplToJson(
  _$PlayerAnalysisImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'technical': instance.technical,
  'tactical': instance.tactical,
  'efficiency': instance.efficiency,
};

_$PlayerTechnicalImpl _$$PlayerTechnicalImplFromJson(
  Map<String, dynamic> json,
) => _$PlayerTechnicalImpl(
  touches: (json['touches'] as num?)?.toInt() ?? 0,
  successfulPasses: (json['successfulPasses'] as num?)?.toInt() ?? 0,
  dribbles: (json['dribbles'] as num?)?.toInt() ?? 0,
  shots: (json['shots'] as num?)?.toInt() ?? 0,
  possessionLost: (json['possessionLost'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$PlayerTechnicalImplToJson(
  _$PlayerTechnicalImpl instance,
) => <String, dynamic>{
  'touches': instance.touches,
  'successfulPasses': instance.successfulPasses,
  'dribbles': instance.dribbles,
  'shots': instance.shots,
  'possessionLost': instance.possessionLost,
};

_$PlayerTacticalImpl _$$PlayerTacticalImplFromJson(Map<String, dynamic> json) =>
    _$PlayerTacticalImpl(
      averagePosition: json['averagePosition'] as String? ?? '',
      zonesOccupied:
          (json['zonesOccupied'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      offBallMovements: json['offBallMovements'] as String? ?? '',
      teammateConnections:
          (json['teammateConnections'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PlayerTacticalImplToJson(
  _$PlayerTacticalImpl instance,
) => <String, dynamic>{
  'averagePosition': instance.averagePosition,
  'zonesOccupied': instance.zonesOccupied,
  'offBallMovements': instance.offBallMovements,
  'teammateConnections': instance.teammateConnections,
};

_$PlayerEfficiencyImpl _$$PlayerEfficiencyImplFromJson(
  Map<String, dynamic> json,
) => _$PlayerEfficiencyImpl(
  dangerIndex: (json['dangerIndex'] as num?)?.toDouble() ?? 0.0,
  criticalErrors: (json['criticalErrors'] as num?)?.toInt() ?? 0,
  decisionMaking: json['decisionMaking'] as String? ?? '',
);

Map<String, dynamic> _$$PlayerEfficiencyImplToJson(
  _$PlayerEfficiencyImpl instance,
) => <String, dynamic>{
  'dangerIndex': instance.dangerIndex,
  'criticalErrors': instance.criticalErrors,
  'decisionMaking': instance.decisionMaking,
};

_$SpatialAnalysisImpl _$$SpatialAnalysisImplFromJson(
  Map<String, dynamic> json,
) => _$SpatialAnalysisImpl(
  teamHeatmap: json['teamHeatmap'] as String? ?? '',
  mostUsedZones:
      (json['mostUsedZones'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  chanceCreationZones:
      (json['chanceCreationZones'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  recoveryZones:
      (json['recoveryZones'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  spaceOccupation: json['spaceOccupation'] == null
      ? const SpaceOccupation()
      : SpaceOccupation.fromJson(
          json['spaceOccupation'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$SpatialAnalysisImplToJson(
  _$SpatialAnalysisImpl instance,
) => <String, dynamic>{
  'teamHeatmap': instance.teamHeatmap,
  'mostUsedZones': instance.mostUsedZones,
  'chanceCreationZones': instance.chanceCreationZones,
  'recoveryZones': instance.recoveryZones,
  'spaceOccupation': instance.spaceOccupation,
};

_$SpaceOccupationImpl _$$SpaceOccupationImplFromJson(
  Map<String, dynamic> json,
) => _$SpaceOccupationImpl(
  widthUsage: json['widthUsage'] as String? ?? '',
  depthUsage: json['depthUsage'] as String? ?? '',
  betweenLinesPlay: json['betweenLinesPlay'] as String? ?? '',
);

Map<String, dynamic> _$$SpaceOccupationImplToJson(
  _$SpaceOccupationImpl instance,
) => <String, dynamic>{
  'widthUsage': instance.widthUsage,
  'depthUsage': instance.depthUsage,
  'betweenLinesPlay': instance.betweenLinesPlay,
};

_$TeamTacticsImpl _$$TeamTacticsImplFromJson(Map<String, dynamic> json) =>
    _$TeamTacticsImpl(
      system: json['system'] == null
          ? const TacticsSystem()
          : TacticsSystem.fromJson(json['system'] as Map<String, dynamic>),
      possession: json['possession'] == null
          ? const TacticsPossession()
          : TacticsPossession.fromJson(
              json['possession'] as Map<String, dynamic>,
            ),
      defense: json['defense'] == null
          ? const TacticsDefense()
          : TacticsDefense.fromJson(json['defense'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeamTacticsImplToJson(_$TeamTacticsImpl instance) =>
    <String, dynamic>{
      'system': instance.system,
      'possession': instance.possession,
      'defense': instance.defense,
    };

_$TacticsSystemImpl _$$TacticsSystemImplFromJson(Map<String, dynamic> json) =>
    _$TacticsSystemImpl(
      starting: json['starting'] as String? ?? '',
      changes:
          (json['changes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TacticsSystemImplToJson(_$TacticsSystemImpl instance) =>
    <String, dynamic>{
      'starting': instance.starting,
      'changes': instance.changes,
    };

_$TacticsPossessionImpl _$$TacticsPossessionImplFromJson(
  Map<String, dynamic> json,
) => _$TacticsPossessionImpl(
  buildUp: json['buildUp'] as String? ?? '',
  rotations: json['rotations'] as String? ?? '',
  pivotUsage: json['pivotUsage'] as String? ?? '',
);

Map<String, dynamic> _$$TacticsPossessionImplToJson(
  _$TacticsPossessionImpl instance,
) => <String, dynamic>{
  'buildUp': instance.buildUp,
  'rotations': instance.rotations,
  'pivotUsage': instance.pivotUsage,
};

_$TacticsDefenseImpl _$$TacticsDefenseImplFromJson(Map<String, dynamic> json) =>
    _$TacticsDefenseImpl(
      pressing: json['pressing'] as String? ?? '',
      style: json['style'] as String? ?? '',
    );

Map<String, dynamic> _$$TacticsDefenseImplToJson(
  _$TacticsDefenseImpl instance,
) => <String, dynamic>{'pressing': instance.pressing, 'style': instance.style};

_$SetPiecesImpl _$$SetPiecesImplFromJson(Map<String, dynamic> json) =>
    _$SetPiecesImpl(
      cornersTaken: (json['cornersTaken'] as num?)?.toInt() ?? 0,
      cornerRoutines: (json['cornerRoutines'] as num?)?.toInt() ?? 0,
      freeKicks: (json['freeKicks'] as num?)?.toInt() ?? 0,
      accumulatedFouls: (json['accumulatedFouls'] as num?)?.toInt() ?? 0,
      doublePenalties: (json['doublePenalties'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SetPiecesImplToJson(_$SetPiecesImpl instance) =>
    <String, dynamic>{
      'cornersTaken': instance.cornersTaken,
      'cornerRoutines': instance.cornerRoutines,
      'freeKicks': instance.freeKicks,
      'accumulatedFouls': instance.accumulatedFouls,
      'doublePenalties': instance.doublePenalties,
    };

_$DecisionMakingImpl _$$DecisionMakingImplFromJson(Map<String, dynamic> json) =>
    _$DecisionMakingImpl(
      underPressureChoices: json['underPressureChoices'] as String? ?? '',
      gameTempo: json['gameTempo'] as String? ?? '',
      unforcedErrors: (json['unforcedErrors'] as num?)?.toInt() ?? 0,
      superiorityChoices: json['superiorityChoices'] as String? ?? '',
    );

Map<String, dynamic> _$$DecisionMakingImplToJson(
  _$DecisionMakingImpl instance,
) => <String, dynamic>{
  'underPressureChoices': instance.underPressureChoices,
  'gameTempo': instance.gameTempo,
  'unforcedErrors': instance.unforcedErrors,
  'superiorityChoices': instance.superiorityChoices,
};

_$IntensityAndTempoImpl _$$IntensityAndTempoImplFromJson(
  Map<String, dynamic> json,
) => _$IntensityAndTempoImpl(
  gameSpeed: json['gameSpeed'] as String? ?? '',
  actionsPerMinute: (json['actionsPerMinute'] as num?)?.toDouble() ?? 0.0,
  tempoChanges: json['tempoChanges'] as String? ?? '',
  pressure: json['pressure'] as String? ?? '',
);

Map<String, dynamic> _$$IntensityAndTempoImplToJson(
  _$IntensityAndTempoImpl instance,
) => <String, dynamic>{
  'gameSpeed': instance.gameSpeed,
  'actionsPerMinute': instance.actionsPerMinute,
  'tempoChanges': instance.tempoChanges,
  'pressure': instance.pressure,
};

_$AdvancedIndicatorsImpl _$$AdvancedIndicatorsImplFromJson(
  Map<String, dynamic> json,
) => _$AdvancedIndicatorsImpl(
  teamXG: (json['teamXG'] as num?)?.toDouble() ?? 0.0,
  teamXA: (json['teamXA'] as num?)?.toDouble() ?? 0.0,
  ppda: (json['ppda'] as num?)?.toDouble() ?? 0.0,
  possessionsPerShot: (json['possessionsPerShot'] as num?)?.toDouble() ?? 0.0,
  offensiveEfficiencyPercent:
      (json['offensiveEfficiencyPercent'] as num?)?.toInt() ?? 0,
  defensiveEfficiencyPercent:
      (json['defensiveEfficiencyPercent'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$AdvancedIndicatorsImplToJson(
  _$AdvancedIndicatorsImpl instance,
) => <String, dynamic>{
  'teamXG': instance.teamXG,
  'teamXA': instance.teamXA,
  'ppda': instance.ppda,
  'possessionsPerShot': instance.possessionsPerShot,
  'offensiveEfficiencyPercent': instance.offensiveEfficiencyPercent,
  'defensiveEfficiencyPercent': instance.defensiveEfficiencyPercent,
};

_$ScoutInsightsImpl _$$ScoutInsightsImplFromJson(Map<String, dynamic> json) =>
    _$ScoutInsightsImpl(
      lineBreakers:
          (json['lineBreakers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      superiorityCreators:
          (json['superiorityCreators'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      gameSlowers:
          (json['gameSlowers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      gameAccelerators:
          (json['gameAccelerators'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      recurrentPatterns:
          (json['recurrentPatterns'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      weaknesses:
          (json['weaknesses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ScoutInsightsImplToJson(_$ScoutInsightsImpl instance) =>
    <String, dynamic>{
      'lineBreakers': instance.lineBreakers,
      'superiorityCreators': instance.superiorityCreators,
      'gameSlowers': instance.gameSlowers,
      'gameAccelerators': instance.gameAccelerators,
      'recurrentPatterns': instance.recurrentPatterns,
      'weaknesses': instance.weaknesses,
    };

_$ReportSummaryImpl _$$ReportSummaryImplFromJson(Map<String, dynamic> json) =>
    _$ReportSummaryImpl(
      overview: json['overview'] as String? ?? '',
      analysis: json['analysis'] as String? ?? '',
      strengthsAndWeaknesses: json['strengthsAndWeaknesses'] as String? ?? '',
      conclusions: json['conclusions'] as String? ?? '',
    );

Map<String, dynamic> _$$ReportSummaryImplToJson(_$ReportSummaryImpl instance) =>
    <String, dynamic>{
      'overview': instance.overview,
      'analysis': instance.analysis,
      'strengthsAndWeaknesses': instance.strengthsAndWeaknesses,
      'conclusions': instance.conclusions,
    };
