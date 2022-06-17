class FailedToScore {
  int? home;
  int? away;
  int? total;

  FailedToScore({this.home, this.away, this.total});

  factory FailedToScore.fromJson(Map<String, dynamic> json) => FailedToScore(
        home: json['home'] as int?,
        away: json['away'] as int?,
        total: json['total'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
        'total': total,
      };
}
