import 'missed.dart';
import 'scored.dart';

class Penalty {
  Scored? scored;
  Missed? missed;
  int? total;

  Penalty({this.scored, this.missed, this.total});

  factory Penalty.fromJson(Map<String, dynamic> json) => Penalty(
        scored: json['scored'] == null
            ? null
            : Scored.fromJson(json['scored'] as Map<String, dynamic>),
        missed: json['missed'] == null
            ? null
            : Missed.fromJson(json['missed'] as Map<String, dynamic>),
        total: json['total'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'scored': scored?.toJson(),
        'missed': missed?.toJson(),
        'total': total,
      };
}
