class CleanSheet {
  int? home;
  int? away;
  int? total;

  CleanSheet({this.home, this.away, this.total});

  factory CleanSheet.fromJson(Map<String, dynamic> json) => CleanSheet(
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
