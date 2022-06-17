import 'against.dart';
import 'for.dart';

class GoalsLast5 {
  For? goalsLast5For;
  Against? against;

  GoalsLast5({this.goalsLast5For, this.against});

  factory GoalsLast5.fromJson(Map<String, dynamic> json) => GoalsLast5(
        goalsLast5For: json['for'] == null
            ? null
            : For.fromJson(json['for'] as Map<String, dynamic>),
        against: json['against'] == null
            ? null
            : Against.fromJson(json['against'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'for': goalsLast5For?.toJson(),
        'against': against?.toJson(),
      };
}
