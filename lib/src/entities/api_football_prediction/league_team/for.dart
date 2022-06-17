import 'average.dart';
import 'minute.dart';
import 'total.dart';

class For {
  Total? total;
  Average? average;
  Minute? minute;

  For({this.total, this.average, this.minute});

  factory For.fromJson(Map<String, dynamic> json) => For(
        total: json['total'] == null
            ? null
            : Total.fromJson(json['total'] as Map<String, dynamic>),
        average: json['average'] == null
            ? null
            : Average.fromJson(json['average'] as Map<String, dynamic>),
        minute: json['minute'] == null
            ? null
            : Minute.fromJson(json['minute'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'total': total?.toJson(),
        'average': average?.toJson(),
        'minute': minute?.toJson(),
      };
}
