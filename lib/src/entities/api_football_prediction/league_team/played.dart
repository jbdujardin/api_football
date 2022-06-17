class Played {
  int? home;
  int? away;
  int? total;

  Played({this.home, this.away, this.total});

  factory Played.fromJson(Map<String, dynamic> json) => Played(
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
