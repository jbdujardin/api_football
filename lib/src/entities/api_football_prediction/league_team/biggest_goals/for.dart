class For {
  int? home;
  int? away;

  For({this.home, this.away});

  factory For.fromJson(Map<String, dynamic> json) => For(
        home: json['home'] as int?,
        away: json['away'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
