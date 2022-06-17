import 'coverage.dart';

class Season {
  int? year;
  String? start;
  String? end;
  bool? current;
  Coverage? coverage;

  Season({this.year, this.start, this.end, this.current, this.coverage});

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        year: json['year'] as int?,
        start: json['start'] as String?,
        end: json['end'] as String?,
        current: json['current'] as bool?,
        coverage: json['coverage'] == null
            ? null
            : Coverage.fromJson(json['coverage'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'year': year,
        'start': start,
        'end': end,
        'current': current,
        'coverage': coverage?.toJson(),
      };
}
