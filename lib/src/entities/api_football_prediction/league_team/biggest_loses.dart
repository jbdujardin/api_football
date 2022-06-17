class BiggestLoses {
  String? home;
  String? away;

  BiggestLoses({this.home, this.away});

  factory BiggestLoses.fromJson(Map<String, dynamic> json) => BiggestLoses(
        home: json['home'] as String?,
        away: json['away'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
