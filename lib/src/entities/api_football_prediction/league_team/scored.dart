class Scored {
  int? total;
  String? percentage;

  Scored({this.total, this.percentage});

  factory Scored.fromJson(Map<String, dynamic> json) => Scored(
        total: json['total'] as int?,
        percentage: json['percentage'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
