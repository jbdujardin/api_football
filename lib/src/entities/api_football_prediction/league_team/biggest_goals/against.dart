class Against {
  int? home;
  int? away;

  Against({this.home, this.away});

  factory Against.fromJson(Map<String, dynamic> json) => Against(
        home: json['home'] as int?,
        away: json['away'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
