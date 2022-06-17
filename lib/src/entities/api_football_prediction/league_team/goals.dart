import 'against.dart';
import 'for.dart';

class Goals {
  For? goalsFor;
  Against? against;

  Goals({this.goalsFor, this.against});

  factory Goals.fromJson(Map<String, dynamic> json) => Goals(
        goalsFor: json['for'] == null
            ? null
            : For.fromJson(json['for'] as Map<String, dynamic>),
        against: json['against'] == null
            ? null
            : Against.fromJson(json['against'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'for': goalsFor?.toJson(),
        'against': against?.toJson(),
      };
}
