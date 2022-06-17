import 'comparison.dart';
import 'h2h/h2h.dart';
import 'league.dart';
import 'predictions.dart';
import 'teams.dart';

class ApiFootballPrediction {
  Predictions? predictions;
  League? league;
  Teams? teams;
  Comparison? comparison;
  List<H2h>? h2h;

  ApiFootballPrediction({
    this.predictions,
    this.league,
    this.teams,
    this.comparison,
    this.h2h,
  });

  factory ApiFootballPrediction.fromJson(Map<String, dynamic> json) {
    return ApiFootballPrediction(
      predictions: json['predictions'] == null
          ? null
          : Predictions.fromJson(json['predictions'] as Map<String, dynamic>),
      league: json['league'] == null
          ? null
          : League.fromJson(json['league'] as Map<String, dynamic>),
      teams: json['teams'] == null
          ? null
          : Teams.fromJson(json['teams'] as Map<String, dynamic>),
      comparison: json['comparison'] == null
          ? null
          : Comparison.fromJson(json['comparison'] as Map<String, dynamic>),
      h2h: (json['h2h'] as List<dynamic>?)
          ?.map((e) => H2h.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'predictions': predictions?.toJson(),
        'league': league?.toJson(),
        'teams': teams?.toJson(),
        'comparison': comparison?.toJson(),
        'h2h': h2h?.map((e) => e.toJson()).toList(),
      };
}
