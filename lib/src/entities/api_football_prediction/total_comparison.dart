class TotalComparison {
  String? home;
  String? away;

  TotalComparison({this.home, this.away});

  factory TotalComparison.fromJson(Map<String, dynamic> json) {
    return TotalComparison(
      home: json['home'] as String?,
      away: json['away'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
