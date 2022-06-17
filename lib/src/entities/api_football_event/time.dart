class Time {
  int? elapsed;
  int? extra;

  Time({this.elapsed, this.extra});

  factory Time.fromJson(Map<String, dynamic> json) => Time(
        elapsed: json['elapsed'] as int?,
        extra: json['extra'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'elapsed': elapsed,
        'extra': extra,
      };
}
