class Att {
  String? home;
  String? away;

  Att({this.home, this.away});

  factory Att.fromJson(Map<String, dynamic> json) => Att(
        home: json['home'] as String?,
        away: json['away'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
