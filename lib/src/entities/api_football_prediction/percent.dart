class Percent {
  String? home;
  String? draw;
  String? away;

  Percent({this.home, this.draw, this.away});

  factory Percent.fromJson(Map<String, dynamic> json) => Percent(
        home: json['home'] as String?,
        draw: json['draw'] as String?,
        away: json['away'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'draw': draw,
        'away': away,
      };
}
