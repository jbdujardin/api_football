class Total {
  int? home;
  int? away;
  int? total;

  Total({this.home, this.away, this.total});

  factory Total.fromJson(Map<String, dynamic> json) => Total(
        home: json['home'] as int?,
        away: json['away'] as int?,
        total: json['total'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
        'total': total,
      };
}
