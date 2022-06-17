import 'goals.dart';
import 'percent.dart';
import 'winner.dart';

class Predictions {
  Winner? winner;
  bool? winOrDraw;
  dynamic underOver;
  Goals? goals;
  String? advice;
  Percent? percent;

  Predictions({
    this.winner,
    this.winOrDraw,
    this.underOver,
    this.goals,
    this.advice,
    this.percent,
  });

  factory Predictions.fromJson(Map<String, dynamic> json) => Predictions(
        winner: json['winner'] == null
            ? null
            : Winner.fromJson(json['winner'] as Map<String, dynamic>),
        winOrDraw: json['win_or_draw'] as bool?,
        underOver: json['under_over'] as dynamic,
        goals: json['goals'] == null
            ? null
            : Goals.fromJson(json['goals'] as Map<String, dynamic>),
        advice: json['advice'] as String?,
        percent: json['percent'] == null
            ? null
            : Percent.fromJson(json['percent'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'winner': winner?.toJson(),
        'win_or_draw': winOrDraw,
        'under_over': underOver,
        'goals': goals?.toJson(),
        'advice': advice,
        'percent': percent?.toJson(),
      };
}
