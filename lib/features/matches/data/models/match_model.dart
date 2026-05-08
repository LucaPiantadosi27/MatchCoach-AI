class MatchModel {
  final String id;
  final String userId;
  final String? seasonId;
  final String homeTeam;
  final String awayTeam;
  final String? team1Color;
  final String? team2Color;
  final DateTime? matchDate;
  final String? venue;
  final String? notes;
  final DateTime createdAt;

  const MatchModel({
    required this.id,
    required this.userId,
    this.seasonId,
    required this.homeTeam,
    required this.awayTeam,
    this.team1Color,
    this.team2Color,
    this.matchDate,
    this.venue,
    this.notes,
    required this.createdAt,
  });

  String get displayTitle => '$homeTeam vs $awayTeam';

  factory MatchModel.fromJson(Map<String, dynamic> json) => MatchModel(
        id: json['id'] as String,
        userId: json['user_id'] as String,
        seasonId: json['season_id'] as String?,
        homeTeam: json['home_team'] as String,
        awayTeam: json['away_team'] as String,
        team1Color: json['team1_color'] as String?,
        team2Color: json['team2_color'] as String?,
        matchDate: json['match_date'] != null
            ? DateTime.tryParse(json['match_date'] as String)
            : null,
        venue: json['venue'] as String?,
        notes: json['notes'] as String?,
        createdAt: DateTime.parse(json['created_at'] as String),
      );

  Map<String, dynamic> toInsertJson(String userId) => {
        'user_id': userId,
        if (seasonId != null) 'season_id': seasonId,
        'home_team': homeTeam,
        'away_team': awayTeam,
        if (team1Color != null) 'team1_color': team1Color,
        if (team2Color != null) 'team2_color': team2Color,
        if (matchDate != null) 'match_date': matchDate!.toIso8601String().substring(0, 10),
        if (venue != null) 'venue': venue,
        if (notes != null) 'notes': notes,
      };

  MatchModel copyWith({
    String? team1Color,
    String? team2Color,
    String? notes,
  }) =>
      MatchModel(
        id: id,
        userId: userId,
        seasonId: seasonId,
        homeTeam: homeTeam,
        awayTeam: awayTeam,
        team1Color: team1Color ?? this.team1Color,
        team2Color: team2Color ?? this.team2Color,
        matchDate: matchDate,
        venue: venue,
        notes: notes ?? this.notes,
        createdAt: createdAt,
      );
}
