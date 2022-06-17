class Extratime {
  int? home;
  int? away;

  Extratime({this.home, this.away});

  factory Extratime.fromJson(Map<String, dynamic> json) => Extratime(
        home: json['home'] as int?,
        away: json['away'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
