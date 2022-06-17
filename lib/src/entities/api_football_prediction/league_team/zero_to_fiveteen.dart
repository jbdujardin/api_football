class ZeroToFiveteen {
  dynamic total;
  dynamic percentage;

  ZeroToFiveteen({this.total, this.percentage});

  factory ZeroToFiveteen.fromJson(Map<String, dynamic> json) => ZeroToFiveteen(
        total: json['total'] as dynamic,
        percentage: json['percentage'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'percentage': percentage,
      };
}
