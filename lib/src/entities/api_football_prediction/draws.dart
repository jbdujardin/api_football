class Draws {
  int? home;
  int? away;
  int? total;

  Draws({this.home, this.away, this.total});

  factory Draws.fromJson(Map<String, dynamic> json) => Draws(
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
