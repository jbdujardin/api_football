class Missed {
  int? total;
  String? percentage;

  Missed({this.total, this.percentage});

  factory Missed.fromJson(Map<String, dynamic> json) => Missed(
        total: json['total'] as int?,
        percentage: json['percentage'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
