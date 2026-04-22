// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'scout_statistics.freezed.dart';
part 'scout_statistics.g.dart';

@freezed
class ScoutStatistics with _$ScoutStatistics {
  @JsonSerializable(explicitToJson: true)
  const factory ScoutStatistics({
    @Default(TeamStats()) TeamStats homeTeam,
    @Default(TeamStats()) TeamStats awayTeam,
    @Default(ReportSummary()) ReportSummary reportSummary,
  }) = _ScoutStatistics;

  factory ScoutStatistics.fromJson(Map<String, dynamic> json) =>
      _$ScoutStatisticsFromJson(json);
}

@freezed
class TeamStats with _$TeamStats {
  @JsonSerializable(explicitToJson: true)
  const factory TeamStats({
    @Default('') String teamName,
    @Default(PossessionAndBuildUp()) PossessionAndBuildUp possessionAndBuildUp,
    @Default(OffensivePhase()) OffensivePhase offensivePhase,
    @Default(DefensivePhase()) DefensivePhase defensivePhase,
    @Default(Transitions()) Transitions transitions,
    @Default([]) List<PlayerAnalysis> playersAnalysis,
    @Default(SpatialAnalysis()) SpatialAnalysis spatialAnalysis,
    @Default(TeamTactics()) TeamTactics teamTactics,
    @Default(SetPieces()) SetPieces setPieces,
    @Default(DecisionMaking()) DecisionMaking decisionMaking,
    @Default(IntensityAndTempo()) IntensityAndTempo intensityAndTempo,
    @Default(AdvancedIndicators()) AdvancedIndicators advancedIndicators,
    @Default(ScoutInsights()) ScoutInsights scoutInsights,
  }) = _TeamStats;

  factory TeamStats.fromJson(Map<String, dynamic> json) =>
      _$TeamStatsFromJson(json);
}

@freezed
class PossessionAndBuildUp with _$PossessionAndBuildUp {
  const factory PossessionAndBuildUp({
    @Default(50) int totalPossessionPercent,
    @Default(PossessionByZone()) PossessionByZone possessionByZone,
    @Default(0.0) double averagePossessionTimeSeconds,
    @Default(0) int totalPossessions,
    @Default(0.0) double averagePassesPerPossession,
    @Default(PossessionsType()) PossessionsType possessionsType,
    @Default(Passes()) Passes passes,
    @Default(Progression()) Progression progression,
  }) = _PossessionAndBuildUp;

  factory PossessionAndBuildUp.fromJson(Map<String, dynamic> json) =>
      _$PossessionAndBuildUpFromJson(json);
}

@freezed
class PossessionByZone with _$PossessionByZone {
  const factory PossessionByZone({
    @Default(0) int defense,
    @Default(0) int midfield,
    @Default(0) int attack,
  }) = _PossessionByZone;

  factory PossessionByZone.fromJson(Map<String, dynamic> json) =>
      _$PossessionByZoneFromJson(json);
}

@freezed
class PossessionsType with _$PossessionsType {
  const factory PossessionsType({
    @Default(0) int sterile,
    @Default(0) int productive,
  }) = _PossessionsType;

  factory PossessionsType.fromJson(Map<String, dynamic> json) =>
      _$PossessionsTypeFromJson(json);
}

@freezed
class Passes with _$Passes {
  const factory Passes({
    @Default(0) int total,
    @Default(0) int accuracyPercent,
    @Default(PassDirection()) PassDirection direction,
    @Default(0) int betweenLines,
    @Default(0) int keyPasses,
    @Default(0) int underPressure,
    @Default(0) int oneTouch,
    @Default(0) int twoPlusTouches,
    @Default(0) int longSequences,
  }) = _Passes;

  factory Passes.fromJson(Map<String, dynamic> json) => _$PassesFromJson(json);
}

@freezed
class PassDirection with _$PassDirection {
  const factory PassDirection({
    @Default(0) int forward,
    @Default(0) int lateral,
    @Default(0) int backward,
  }) = _PassDirection;

  factory PassDirection.fromJson(Map<String, dynamic> json) =>
      _$PassDirectionFromJson(json);
}

@freezed
class Progression with _$Progression {
  const factory Progression({
    @Default(0) int ballCarries,
    @Default(Dribbles()) Dribbles dribbles,
    @Default(0) int defensiveLineBreaks,
    @Default(0) int finalThirdEntries,
  }) = _Progression;

  factory Progression.fromJson(Map<String, dynamic> json) =>
      _$ProgressionFromJson(json);
}

@freezed
class Dribbles with _$Dribbles {
  const factory Dribbles({
    @Default(0) int successful,
    @Default(0) int failed,
  }) = _Dribbles;

  factory Dribbles.fromJson(Map<String, dynamic> json) =>
      _$DribblesFromJson(json);
}

@freezed
class OffensivePhase with _$OffensivePhase {
  const factory OffensivePhase({
    @Default(Shots()) Shots shots,
    @Default(Creation()) Creation creation,
    @Default(MostDangerousPlayer()) MostDangerousPlayer mostDangerousPlayer,
  }) = _OffensivePhase;

  factory OffensivePhase.fromJson(Map<String, dynamic> json) =>
      _$OffensivePhaseFromJson(json);
}

@freezed
class Shots with _$Shots {
  const factory Shots({
    @Default(0) int total,
    @Default(0) int onTarget,
    @Default(0) int offTarget,
    @Default(0) int blocked,
    @Default(0.0) double xG,
    @Default(0) int insideArea,
    @Default(0) int outsideArea,
    @Default(0) int fromSetPieces,
  }) = _Shots;

  factory Shots.fromJson(Map<String, dynamic> json) => _$ShotsFromJson(json);
}

@freezed
class Creation with _$Creation {
  const factory Creation({
    @Default(0) int chancesCreated,
    @Default(0) int bigChances,
    @Default(0) int assists,
    @Default(0) int preAssists,
    @Default(0) int offensive1v1Won,
    @Default(0) int offBallCuts,
  }) = _Creation;

  factory Creation.fromJson(Map<String, dynamic> json) =>
      _$CreationFromJson(json);
}

@freezed
class MostDangerousPlayer with _$MostDangerousPlayer {
  const factory MostDangerousPlayer({
    @Default('') String name,
    @Default(0) int shotsGenerated,
    @Default(0.0) double individualXG,
    @Default(0) int chancesCreated,
    @Default(0) int dribblesSuccessful,
    @Default(0) int offensiveInvolvementPercent,
  }) = _MostDangerousPlayer;

  factory MostDangerousPlayer.fromJson(Map<String, dynamic> json) =>
      _$MostDangerousPlayerFromJson(json);
}

@freezed
class DefensivePhase with _$DefensivePhase {
  const factory DefensivePhase({
    @Default(PressureAndRecovery()) PressureAndRecovery pressureAndRecovery,
    @Default(Duels()) Duels duels,
    @Default(Structure()) Structure structure,
  }) = _DefensivePhase;

  factory DefensivePhase.fromJson(Map<String, dynamic> json) =>
      _$DefensivePhaseFromJson(json);
}

@freezed
class PressureAndRecovery with _$PressureAndRecovery {
  const factory PressureAndRecovery({
    @Default(0) int ballRecoveries,
    @Default(RecoveryZones()) RecoveryZones recoveryZones,
    @Default(Pressing()) Pressing pressing,
    @Default(0.0) double averageRecoveryTimeSeconds,
  }) = _PressureAndRecovery;

  factory PressureAndRecovery.fromJson(Map<String, dynamic> json) =>
      _$PressureAndRecoveryFromJson(json);
}

@freezed
class RecoveryZones with _$RecoveryZones {
  const factory RecoveryZones({
    @Default(0) int high,
    @Default(0) int medium,
    @Default(0) int low,
  }) = _RecoveryZones;

  factory RecoveryZones.fromJson(Map<String, dynamic> json) =>
      _$RecoveryZonesFromJson(json);
}

@freezed
class Pressing with _$Pressing {
  const factory Pressing({
    @Default(0) int successful,
    @Default(0) int failed,
  }) = _Pressing;

  factory Pressing.fromJson(Map<String, dynamic> json) =>
      _$PressingFromJson(json);
}

@freezed
class Duels with _$Duels {
  const factory Duels({
    @Default(0) int defensiveWon,
    @Default(0) int defensiveLost,
    @Default(0) int successfulTackles,
    @Default(0) int interceptions,
    @Default(0) int shotsBlocked,
    @Default(0) int defensive1v1,
  }) = _Duels;

  factory Duels.fromJson(Map<String, dynamic> json) => _$DuelsFromJson(json);
}

@freezed
class Structure with _$Structure {
  const factory Structure({
    @Default('') String defensiveLine,
    @Default('') String compactness,
    @Default('') String defensiveRotations,
    @Default(0) int criticalErrors,
  }) = _Structure;

  factory Structure.fromJson(Map<String, dynamic> json) =>
      _$StructureFromJson(json);
}

@freezed
class Transitions with _$Transitions {
  const factory Transitions({
    @Default(OffensiveTransition()) OffensiveTransition offensive,
    @Default(DefensiveTransition()) DefensiveTransition defensive,
  }) = _Transitions;

  factory Transitions.fromJson(Map<String, dynamic> json) =>
      _$TransitionsFromJson(json);
}

@freezed
class OffensiveTransition with _$OffensiveTransition {
  const factory OffensiveTransition({
    @Default(0) int counterAttacks,
    @Default('') String developmentSpeed,
    @Default(TransitionOutcomes()) TransitionOutcomes outcomes,
  }) = _OffensiveTransition;

  factory OffensiveTransition.fromJson(Map<String, dynamic> json) =>
      _$OffensiveTransitionFromJson(json);
}

@freezed
class TransitionOutcomes with _$TransitionOutcomes {
  const factory TransitionOutcomes({
    @Default(0) int shots,
    @Default(0) int goals,
    @Default(0) int lostBalls,
  }) = _TransitionOutcomes;

  factory TransitionOutcomes.fromJson(Map<String, dynamic> json) =>
      _$TransitionOutcomesFromJson(json);
}

@freezed
class DefensiveTransition with _$DefensiveTransition {
  const factory DefensiveTransition({
    @Default(0.0) double recoveryTimeSeconds,
    @Default(0) int tacticalFouls,
    @Default(0) int goalsConcededInTransition,
  }) = _DefensiveTransition;

  factory DefensiveTransition.fromJson(Map<String, dynamic> json) =>
      _$DefensiveTransitionFromJson(json);
}

@freezed
class PlayerAnalysis with _$PlayerAnalysis {
  const factory PlayerAnalysis({
    @Default('') String name,
    @Default(PlayerTechnical()) PlayerTechnical technical,
    @Default(PlayerTactical()) PlayerTactical tactical,
    @Default(PlayerEfficiency()) PlayerEfficiency efficiency,
  }) = _PlayerAnalysis;

  factory PlayerAnalysis.fromJson(Map<String, dynamic> json) =>
      _$PlayerAnalysisFromJson(json);
}

@freezed
class PlayerTechnical with _$PlayerTechnical {
  const factory PlayerTechnical({
    @Default(0) int touches,
    @Default(0) int successfulPasses,
    @Default(0) int dribbles,
    @Default(0) int shots,
    @Default(0) int possessionLost,
  }) = _PlayerTechnical;

  factory PlayerTechnical.fromJson(Map<String, dynamic> json) =>
      _$PlayerTechnicalFromJson(json);
}

@freezed
class PlayerTactical with _$PlayerTactical {
  const factory PlayerTactical({
    @Default('') String averagePosition,
    @Default([]) List<String> zonesOccupied,
    @Default('') String offBallMovements,
    @Default([]) List<String> teammateConnections,
  }) = _PlayerTactical;

  factory PlayerTactical.fromJson(Map<String, dynamic> json) =>
      _$PlayerTacticalFromJson(json);
}

@freezed
class PlayerEfficiency with _$PlayerEfficiency {
  const factory PlayerEfficiency({
    @Default(0.0) double dangerIndex,
    @Default(0) int criticalErrors,
    @Default('') String decisionMaking,
  }) = _PlayerEfficiency;

  factory PlayerEfficiency.fromJson(Map<String, dynamic> json) =>
      _$PlayerEfficiencyFromJson(json);
}

@freezed
class SpatialAnalysis with _$SpatialAnalysis {
  const factory SpatialAnalysis({
    @Default('') String teamHeatmap,
    @Default([]) List<String> mostUsedZones,
    @Default([]) List<String> chanceCreationZones,
    @Default([]) List<String> recoveryZones,
    @Default(SpaceOccupation()) SpaceOccupation spaceOccupation,
  }) = _SpatialAnalysis;

  factory SpatialAnalysis.fromJson(Map<String, dynamic> json) =>
      _$SpatialAnalysisFromJson(json);
}

@freezed
class SpaceOccupation with _$SpaceOccupation {
  const factory SpaceOccupation({
    @Default('') String widthUsage,
    @Default('') String depthUsage,
    @Default('') String betweenLinesPlay,
  }) = _SpaceOccupation;

  factory SpaceOccupation.fromJson(Map<String, dynamic> json) =>
      _$SpaceOccupationFromJson(json);
}

@freezed
class TeamTactics with _$TeamTactics {
  const factory TeamTactics({
    @Default(TacticsSystem()) TacticsSystem system,
    @Default(TacticsPossession()) TacticsPossession possession,
    @Default(TacticsDefense()) TacticsDefense defense,
  }) = _TeamTactics;

  factory TeamTactics.fromJson(Map<String, dynamic> json) =>
      _$TeamTacticsFromJson(json);
}

@freezed
class TacticsSystem with _$TacticsSystem {
  const factory TacticsSystem({
    @Default('') String starting,
    @Default([]) List<String> changes,
  }) = _TacticsSystem;

  factory TacticsSystem.fromJson(Map<String, dynamic> json) =>
      _$TacticsSystemFromJson(json);
}

@freezed
class TacticsPossession with _$TacticsPossession {
  const factory TacticsPossession({
    @Default('') String buildUp,
    @Default('') String rotations,
    @Default('') String pivotUsage,
  }) = _TacticsPossession;

  factory TacticsPossession.fromJson(Map<String, dynamic> json) =>
      _$TacticsPossessionFromJson(json);
}

@freezed
class TacticsDefense with _$TacticsDefense {
  const factory TacticsDefense({
    @Default('') String pressing,
    @Default('') String style,
  }) = _TacticsDefense;

  factory TacticsDefense.fromJson(Map<String, dynamic> json) =>
      _$TacticsDefenseFromJson(json);
}

@freezed
class SetPieces with _$SetPieces {
  const factory SetPieces({
    @Default(0) int cornersTaken,
    @Default(0) int cornerRoutines,
    @Default(0) int freeKicks,
    @Default(0) int accumulatedFouls,
    @Default(0) int doublePenalties,
  }) = _SetPieces;

  factory SetPieces.fromJson(Map<String, dynamic> json) =>
      _$SetPiecesFromJson(json);
}

@freezed
class DecisionMaking with _$DecisionMaking {
  const factory DecisionMaking({
    @Default('') String underPressureChoices,
    @Default('') String gameTempo,
    @Default(0) int unforcedErrors,
    @Default('') String superiorityChoices,
  }) = _DecisionMaking;

  factory DecisionMaking.fromJson(Map<String, dynamic> json) =>
      _$DecisionMakingFromJson(json);
}

@freezed
class IntensityAndTempo with _$IntensityAndTempo {
  const factory IntensityAndTempo({
    @Default('') String gameSpeed,
    @Default(0.0) double actionsPerMinute,
    @Default('') String tempoChanges,
    @Default('') String pressure,
  }) = _IntensityAndTempo;

  factory IntensityAndTempo.fromJson(Map<String, dynamic> json) =>
      _$IntensityAndTempoFromJson(json);
}

@freezed
class AdvancedIndicators with _$AdvancedIndicators {
  const factory AdvancedIndicators({
    @Default(0.0) double teamXG,
    @Default(0.0) double teamXA,
    @Default(0.0) double ppda,
    @Default(0.0) double possessionsPerShot,
    @Default(0) int offensiveEfficiencyPercent,
    @Default(0) int defensiveEfficiencyPercent,
  }) = _AdvancedIndicators;

  factory AdvancedIndicators.fromJson(Map<String, dynamic> json) =>
      _$AdvancedIndicatorsFromJson(json);
}

@freezed
class ScoutInsights with _$ScoutInsights {
  const factory ScoutInsights({
    @Default([]) List<String> lineBreakers,
    @Default([]) List<String> superiorityCreators,
    @Default([]) List<String> gameSlowers,
    @Default([]) List<String> gameAccelerators,
    @Default([]) List<String> recurrentPatterns,
    @Default([]) List<String> weaknesses,
  }) = _ScoutInsights;

  factory ScoutInsights.fromJson(Map<String, dynamic> json) =>
      _$ScoutInsightsFromJson(json);
}

@freezed
class ReportSummary with _$ReportSummary {
  const factory ReportSummary({
    @Default('') String overview,
    @Default('') String analysis,
    @Default('') String strengthsAndWeaknesses,
    @Default('') String conclusions,
  }) = _ReportSummary;

  factory ReportSummary.fromJson(Map<String, dynamic> json) =>
      _$ReportSummaryFromJson(json);
}
