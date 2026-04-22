// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchAnalysisModelImpl _$$MatchAnalysisModelImplFromJson(
  Map<String, dynamic> json,
) => _$MatchAnalysisModelImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  title: json['title'] as String,
  videoUrl: json['videoUrl'] as String,
  storagePath: json['storagePath'] as String?,
  geminiFileId: json['geminiFileId'] as String?,
  status:
      $enumDecodeNullable(_$AnalysisStatusEnumMap, json['status']) ??
      AnalysisStatus.pending,
  statistics: json['statistics'] == null
      ? null
      : ScoutStatistics.fromJson(json['statistics'] as Map<String, dynamic>),
  errorMessage: json['errorMessage'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$MatchAnalysisModelImplToJson(
  _$MatchAnalysisModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'title': instance.title,
  'videoUrl': instance.videoUrl,
  'storagePath': instance.storagePath,
  'geminiFileId': instance.geminiFileId,
  'status': _$AnalysisStatusEnumMap[instance.status]!,
  'statistics': instance.statistics,
  'errorMessage': instance.errorMessage,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

const _$AnalysisStatusEnumMap = {
  AnalysisStatus.pending: 'pending',
  AnalysisStatus.uploading: 'uploading',
  AnalysisStatus.processing: 'processing',
  AnalysisStatus.completed: 'completed',
  AnalysisStatus.error: 'error',
};
