// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_analysis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MatchAnalysisModel _$MatchAnalysisModelFromJson(Map<String, dynamic> json) {
  return _MatchAnalysisModel.fromJson(json);
}

/// @nodoc
mixin _$MatchAnalysisModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  String? get storagePath => throw _privateConstructorUsedError;
  String? get geminiFileId => throw _privateConstructorUsedError;
  AnalysisStatus get status => throw _privateConstructorUsedError;
  ScoutStatistics? get statistics => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this MatchAnalysisModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchAnalysisModelCopyWith<MatchAnalysisModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchAnalysisModelCopyWith<$Res> {
  factory $MatchAnalysisModelCopyWith(
    MatchAnalysisModel value,
    $Res Function(MatchAnalysisModel) then,
  ) = _$MatchAnalysisModelCopyWithImpl<$Res, MatchAnalysisModel>;
  @useResult
  $Res call({
    String id,
    String userId,
    String title,
    String videoUrl,
    String? storagePath,
    String? geminiFileId,
    AnalysisStatus status,
    ScoutStatistics? statistics,
    String? errorMessage,
    DateTime createdAt,
    DateTime? updatedAt,
  });

  $ScoutStatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class _$MatchAnalysisModelCopyWithImpl<$Res, $Val extends MatchAnalysisModel>
    implements $MatchAnalysisModelCopyWith<$Res> {
  _$MatchAnalysisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? videoUrl = null,
    Object? storagePath = freezed,
    Object? geminiFileId = freezed,
    Object? status = null,
    Object? statistics = freezed,
    Object? errorMessage = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            videoUrl: null == videoUrl
                ? _value.videoUrl
                : videoUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            storagePath: freezed == storagePath
                ? _value.storagePath
                : storagePath // ignore: cast_nullable_to_non_nullable
                      as String?,
            geminiFileId: freezed == geminiFileId
                ? _value.geminiFileId
                : geminiFileId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as AnalysisStatus,
            statistics: freezed == statistics
                ? _value.statistics
                : statistics // ignore: cast_nullable_to_non_nullable
                      as ScoutStatistics?,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of MatchAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScoutStatisticsCopyWith<$Res>? get statistics {
    if (_value.statistics == null) {
      return null;
    }

    return $ScoutStatisticsCopyWith<$Res>(_value.statistics!, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchAnalysisModelImplCopyWith<$Res>
    implements $MatchAnalysisModelCopyWith<$Res> {
  factory _$$MatchAnalysisModelImplCopyWith(
    _$MatchAnalysisModelImpl value,
    $Res Function(_$MatchAnalysisModelImpl) then,
  ) = __$$MatchAnalysisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String title,
    String videoUrl,
    String? storagePath,
    String? geminiFileId,
    AnalysisStatus status,
    ScoutStatistics? statistics,
    String? errorMessage,
    DateTime createdAt,
    DateTime? updatedAt,
  });

  @override
  $ScoutStatisticsCopyWith<$Res>? get statistics;
}

/// @nodoc
class __$$MatchAnalysisModelImplCopyWithImpl<$Res>
    extends _$MatchAnalysisModelCopyWithImpl<$Res, _$MatchAnalysisModelImpl>
    implements _$$MatchAnalysisModelImplCopyWith<$Res> {
  __$$MatchAnalysisModelImplCopyWithImpl(
    _$MatchAnalysisModelImpl _value,
    $Res Function(_$MatchAnalysisModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MatchAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? title = null,
    Object? videoUrl = null,
    Object? storagePath = freezed,
    Object? geminiFileId = freezed,
    Object? status = null,
    Object? statistics = freezed,
    Object? errorMessage = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$MatchAnalysisModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        videoUrl: null == videoUrl
            ? _value.videoUrl
            : videoUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        storagePath: freezed == storagePath
            ? _value.storagePath
            : storagePath // ignore: cast_nullable_to_non_nullable
                  as String?,
        geminiFileId: freezed == geminiFileId
            ? _value.geminiFileId
            : geminiFileId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as AnalysisStatus,
        statistics: freezed == statistics
            ? _value.statistics
            : statistics // ignore: cast_nullable_to_non_nullable
                  as ScoutStatistics?,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchAnalysisModelImpl implements _MatchAnalysisModel {
  const _$MatchAnalysisModelImpl({
    required this.id,
    required this.userId,
    required this.title,
    required this.videoUrl,
    this.storagePath,
    this.geminiFileId,
    this.status = AnalysisStatus.pending,
    this.statistics,
    this.errorMessage,
    required this.createdAt,
    this.updatedAt,
  });

  factory _$MatchAnalysisModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchAnalysisModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String title;
  @override
  final String videoUrl;
  @override
  final String? storagePath;
  @override
  final String? geminiFileId;
  @override
  @JsonKey()
  final AnalysisStatus status;
  @override
  final ScoutStatistics? statistics;
  @override
  final String? errorMessage;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MatchAnalysisModel(id: $id, userId: $userId, title: $title, videoUrl: $videoUrl, storagePath: $storagePath, geminiFileId: $geminiFileId, status: $status, statistics: $statistics, errorMessage: $errorMessage, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchAnalysisModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.storagePath, storagePath) ||
                other.storagePath == storagePath) &&
            (identical(other.geminiFileId, geminiFileId) ||
                other.geminiFileId == geminiFileId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    title,
    videoUrl,
    storagePath,
    geminiFileId,
    status,
    statistics,
    errorMessage,
    createdAt,
    updatedAt,
  );

  /// Create a copy of MatchAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchAnalysisModelImplCopyWith<_$MatchAnalysisModelImpl> get copyWith =>
      __$$MatchAnalysisModelImplCopyWithImpl<_$MatchAnalysisModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchAnalysisModelImplToJson(this);
  }
}

abstract class _MatchAnalysisModel implements MatchAnalysisModel {
  const factory _MatchAnalysisModel({
    required final String id,
    required final String userId,
    required final String title,
    required final String videoUrl,
    final String? storagePath,
    final String? geminiFileId,
    final AnalysisStatus status,
    final ScoutStatistics? statistics,
    final String? errorMessage,
    required final DateTime createdAt,
    final DateTime? updatedAt,
  }) = _$MatchAnalysisModelImpl;

  factory _MatchAnalysisModel.fromJson(Map<String, dynamic> json) =
      _$MatchAnalysisModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get title;
  @override
  String get videoUrl;
  @override
  String? get storagePath;
  @override
  String? get geminiFileId;
  @override
  AnalysisStatus get status;
  @override
  ScoutStatistics? get statistics;
  @override
  String? get errorMessage;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of MatchAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchAnalysisModelImplCopyWith<_$MatchAnalysisModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
