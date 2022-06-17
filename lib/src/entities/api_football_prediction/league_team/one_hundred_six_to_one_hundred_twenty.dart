class OneHundredSixToOneHundredTwenty {
  dynamic total;
  dynamic percentage;

  OneHundredSixToOneHundredTwenty({this.total, this.percentage});

  factory OneHundredSixToOneHundredTwenty.fromJson(Map<String, dynamic> json) =>
      OneHundredSixToOneHundredTwenty(
        total: json['total'] as dynamic,
        percentage: json['percentage'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
