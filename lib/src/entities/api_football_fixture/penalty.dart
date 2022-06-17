class Penalty {
  int? home;
  int? away;

  Penalty({this.home, this.away});

  factory Penalty.fromJson(Map<String, dynamic> json) => Penalty(
        home: json['home'] as int?,
        away: json['away'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
