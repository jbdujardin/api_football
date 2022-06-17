class SixtyOneToSeventyFive {
  int? total;
  String? percentage;

  SixtyOneToSeventyFive({this.total, this.percentage});

  factory SixtyOneToSeventyFive.fromJson(Map<String, dynamic> json) =>
      SixtyOneToSeventyFive(
        total: json['total'] as int?,
        percentage: json['percentage'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
