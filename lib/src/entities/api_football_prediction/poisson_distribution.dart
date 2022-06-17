class PoissonDistribution {
  String? home;
  String? away;

  PoissonDistribution({this.home, this.away});

  factory PoissonDistribution.fromJson(Map<String, dynamic> json) {
    return PoissonDistribution(
      home: json['home'] as String?,
      away: json['away'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
