class SeventySixToNinety {
  dynamic total;
  dynamic percentage;

  SeventySixToNinety({this.total, this.percentage});

  factory SeventySixToNinety.fromJson(Map<String, dynamic> json) =>
      SeventySixToNinety(
        total: json['total'] as dynamic,
        percentage: json['percentage'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
