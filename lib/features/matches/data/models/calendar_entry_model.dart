class CalendarEntryModel {
  final String id;
  final String userId;
  final String? seasonId;
  final int? matchDay;
  final String homeTeam;
  final String awayTeam;
  final DateTime? scheduledDate;
  final String? venue;
  final String? matchId;
  final DateTime createdAt;

  const CalendarEntryModel({
    required this.id,
    required this.userId,
    this.seasonId,
    this.matchDay,
    required this.homeTeam,
    required this.awayTeam,
    this.scheduledDate,
    this.venue,
    this.matchId,
    required this.createdAt,
  });

  bool get isLinkedToMatch => matchId != null;

  factory CalendarEntryModel.fromJson(Map<String, dynamic> json) => CalendarEntryModel(
        id: json['id'] as String,
        userId: json['user_id'] as String,
        seasonId: json['season_id'] as String?,
        matchDay: json['match_day'] as int?,
        homeTeam: json['home_team'] as String,
        awayTeam: json['away_team'] as String,
        scheduledDate: json['scheduled_date'] != null
            ? DateTime.tryParse(json['scheduled_date'] as String)
            : null,
        venue: json['venue'] as String?,
        matchId: json['match_id'] as String?,
        createdAt: DateTime.parse(json['created_at'] as String),
      );

  Map<String, dynamic> toInsertJson(String userId) => {
        'user_id': userId,
        if (seasonId != null) 'season_id': seasonId,
        if (matchDay != null) 'match_day': matchDay,
        'home_team': homeTeam,
        'away_team': awayTeam,
        if (scheduledDate != null) 'scheduled_date': scheduledDate!.toIso8601String().substring(0, 10),
        if (venue != null) 'venue': venue,
        if (matchId != null) 'match_id': matchId,
      };

  CalendarEntryModel copyWith({String? matchId}) => CalendarEntryModel(
        id: id,
        userId: userId,
        seasonId: seasonId,
        matchDay: matchDay,
        homeTeam: homeTeam,
        awayTeam: awayTeam,
        scheduledDate: scheduledDate,
        venue: venue,
        matchId: matchId ?? this.matchId,
        createdAt: createdAt,
      );
}
