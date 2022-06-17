import 'coach.dart';
import 'start_xi.dart';
import 'substitute.dart';
import 'team.dart';

class ApiFootballLineup {
  Team? team;
  Coach? coach;
  String? formation;
  List<StartXi>? startXi;
  List<Substitute>? substitutes;

  ApiFootballLineup({
    this.team,
    this.coach,
    this.formation,
    this.startXi,
    this.substitutes,
  });

  factory ApiFootballLineup.fromJson(Map<String, dynamic> json) =>
      ApiFootballLineup(
        team: json['team'] == null
            ? null
            : Team.fromJson(json['team'] as Map<String, dynamic>),
        coach: json['coach'] == null
            ? null
            : Coach.fromJson(json['coach'] as Map<String, dynamic>),
        formation: json['formation'] as String?,
        startXi: (json['startXI'] as List<dynamic>?)
            ?.map((e) => StartXi.fromJson(e as Map<String, dynamic>))
            .toList(),
        substitutes: (json['substitutes'] as List<dynamic>?)
            ?.map((e) => Substitute.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'team': team?.toJson(),
        'coach': coach?.toJson(),
        'formation': formation,
        'startXI': startXi?.map((e) => e.toJson()).toList(),
        'substitutes': substitutes?.map((e) => e.toJson()).toList(),
      };
}
