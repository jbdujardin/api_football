import 'red.dart';
import 'yellow.dart';

class Cards {
  Yellow? yellow;
  Red? red;

  Cards({this.yellow, this.red});

  factory Cards.fromJson(Map<String, dynamic> json) => Cards(
        yellow: json['yellow'] == null
            ? null
            : Yellow.fromJson(json['yellow'] as Map<String, dynamic>),
        red: json['red'] == null
            ? null
            : Red.fromJson(json['red'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'yellow': yellow?.toJson(),
        'red': red?.toJson(),
      };
}
