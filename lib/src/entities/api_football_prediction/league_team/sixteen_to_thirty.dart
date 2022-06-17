class SixteenToThirty {
  int? total;
  String? percentage;

  SixteenToThirty({this.total, this.percentage});

  factory SixteenToThirty.fromJson(Map<String, dynamic> json) =>
      SixteenToThirty(
        total: json['total'] as int?,
        percentage: json['percentage'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
