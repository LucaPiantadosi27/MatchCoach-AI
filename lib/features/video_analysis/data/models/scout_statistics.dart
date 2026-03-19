// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'scout_statistics.freezed.dart';
part 'scout_statistics.g.dart';

@freezed
class ScoutStatistics with _$ScoutStatistics {
  const factory ScoutStatistics({
    @Default(0) int homeGoals,
    @Default(0) int awayGoals,
    @Default(0) int homeShots,
    @Default(0) int awayShots,
    @Default(0) int homeShotsOnTarget,
    @Default(0) int awayShotsOnTarget,
    @Default(0) int homePasses,
    @Default(0) int awayPasses,
    @Default(50) int homePossessionPercentage,
    @Default(50) int awayPossessionPercentage,
    @Default(0) int homeFouls,
    @Default(0) int awayFouls,
    @Default(0) int homeCorners,
    @Default(0) int awayCorners,
    @Default([]) List<String> goalScorers,
    @Default([]) List<String> keyEvents,
    String? aiSummary,
  }) = _ScoutStatistics;

  factory ScoutStatistics.fromJson(Map<String, dynamic> json) =>
      _$ScoutStatisticsFromJson(json);
}
