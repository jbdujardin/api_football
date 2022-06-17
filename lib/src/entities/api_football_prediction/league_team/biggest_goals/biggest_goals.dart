import 'against.dart';
import 'for.dart';

class BiggestGoals {
  For? biggestGoalsFor;
  Against? against;

  BiggestGoals({this.biggestGoalsFor, this.against});

  factory BiggestGoals.fromJson(Map<String, dynamic> json) => BiggestGoals(
        biggestGoalsFor: json['for'] == null
            ? null
            : For.fromJson(json['for'] as Map<String, dynamic>),
        against: json['against'] == null
            ? null
            : Against.fromJson(json['against'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'for': biggestGoalsFor?.toJson(),
        'against': against?.toJson(),
      };
}
