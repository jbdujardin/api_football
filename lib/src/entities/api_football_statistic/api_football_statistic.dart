import 'statistic.dart';
import 'team.dart';

class ApiFootballStatistic {
  Team? team;
  List<Statistic>? statistics;

  ApiFootballStatistic({this.team, this.statistics});

  factory ApiFootballStatistic.fromJson(Map<String, dynamic> json) =>
      ApiFootballStatistic(
        team: json['team'] == null
            ? null
            : Team.fromJson(json['team'] as Map<String, dynamic>),
        statistics: (json['statistics'] as List<dynamic>?)
            ?.map((e) => Statistic.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'team': team?.toJson(),
        'statistics': statistics?.map((e) => e.toJson()).toList(),
      };
}
