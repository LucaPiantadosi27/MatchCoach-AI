import 'package:freezed_annotation/freezed_annotation.dart';

import 'scout_statistics.dart';

part 'match_analysis_model.freezed.dart';
part 'match_analysis_model.g.dart';

enum AnalysisStatus {
  pending,
  uploading,
  processing,
  completed,
  error,
}

@freezed
class MatchAnalysisModel with _$MatchAnalysisModel {
  const factory MatchAnalysisModel({
    required String id,
    required String userId,
    required String title,
    required String videoUrl,
    String? storagePath,
    String? geminiFileId,
    @Default(AnalysisStatus.pending) AnalysisStatus status,
    ScoutStatistics? statistics,
    String? errorMessage,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _MatchAnalysisModel;

  factory MatchAnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$MatchAnalysisModelFromJson(json);
}
