class ThirtyOneToFourtyFive {
  dynamic total;
  dynamic percentage;

  ThirtyOneToFourtyFive({this.total, this.percentage});

  factory ThirtyOneToFourtyFive.fromJson(Map<String, dynamic> json) =>
      ThirtyOneToFourtyFive(
        total: json['total'] as dynamic,
        percentage: json['percentage'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
