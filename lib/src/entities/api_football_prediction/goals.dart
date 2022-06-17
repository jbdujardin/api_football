class Goals {
  String? home;
  String? away;

  Goals({this.home, this.away});

  factory Goals.fromJson(Map<String, dynamic> json) => Goals(
        home: json['home'] as String?,
        away: json['away'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
