class Wins {
  int? home;
  int? away;
  int? total;

  Wins({this.home, this.away, this.total});

  factory Wins.fromJson(Map<String, dynamic> json) => Wins(
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
