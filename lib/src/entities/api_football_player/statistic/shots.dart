class Shots {
  int? total;
  int? on;

  Shots({this.total, this.on});

  factory Shots.fromJson(Map<String, dynamic> json) => Shots(
        total: json['total'] as int?,
        on: json['on'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'on': on,
      };
}
