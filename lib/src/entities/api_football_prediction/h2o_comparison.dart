class H2oComparison {
  String? home;
  String? away;

  H2oComparison({this.home, this.away});

  factory H2oComparison.fromJson(Map<String, dynamic> json) => H2oComparison(
        home: json['home'] as String?,
        away: json['away'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
