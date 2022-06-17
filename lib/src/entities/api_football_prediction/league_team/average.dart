class Average {
  String? home;
  String? away;
  String? total;

  Average({this.home, this.away, this.total});

  factory Average.fromJson(Map<String, dynamic> json) => Average(
        home: json['home'] as String?,
        away: json['away'] as String?,
        total: json['total'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
        'total': total,
      };
}
