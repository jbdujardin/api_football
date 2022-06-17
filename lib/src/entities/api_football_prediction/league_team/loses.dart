class Loses {
  int? home;
  int? away;
  int? total;

  Loses({this.home, this.away, this.total});

  factory Loses.fromJson(Map<String, dynamic> json) => Loses(
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
