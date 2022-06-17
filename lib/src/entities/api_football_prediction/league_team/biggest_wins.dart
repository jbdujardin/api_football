class BiggestWins {
  String? home;
  String? away;

  BiggestWins({this.home, this.away});

  factory BiggestWins.fromJson(Map<String, dynamic> json) => BiggestWins(
        home: json['home'] as String?,
        away: json['away'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
