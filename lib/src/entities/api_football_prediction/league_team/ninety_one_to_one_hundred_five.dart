class NinetyOneToOneHundredFive {
  dynamic total;
  dynamic percentage;

  NinetyOneToOneHundredFive({this.total, this.percentage});

  factory NinetyOneToOneHundredFive.fromJson(Map<String, dynamic> json) =>
      NinetyOneToOneHundredFive(
        total: json['total'] as dynamic,
        percentage: json['percentage'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
