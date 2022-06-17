class FourtySixToSixty {
  int? total;
  String? percentage;

  FourtySixToSixty({this.total, this.percentage});

  factory FourtySixToSixty.fromJson(Map<String, dynamic> json) =>
      FourtySixToSixty(
        total: json['total'] as int?,
        percentage: json['percentage'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
