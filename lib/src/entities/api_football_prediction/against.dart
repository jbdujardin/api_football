class Against {
  int? total;
  String? average;

  Against({this.total, this.average});

  factory Against.fromJson(Map<String, dynamic> json) => Against(
        total: json['total'] as int?,
        average: json['average'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'average': average,
      };
}
