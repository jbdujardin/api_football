class Def {
  String? home;
  String? away;

  Def({this.home, this.away});

  factory Def.fromJson(Map<String, dynamic> json) => Def(
        home: json['home'] as String?,
        away: json['away'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
