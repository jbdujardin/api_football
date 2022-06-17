class For {
  int? total;
  String? average;

  For({this.total, this.average});

  factory For.fromJson(Map<String, dynamic> json) => For(
        total: json['total'] as int?,
        average: json['average'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'average': average,
      };
}
