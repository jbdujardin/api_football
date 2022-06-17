import 'player_infos.dart';
import 'statistic/statistic.dart';

class Player {
  PlayerInfos? player;
  List<Statistic>? statistics;

  Player({this.player, this.statistics});

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        player: json['player'] == null
            ? null
            : PlayerInfos.fromJson(json['player'] as Map<String, dynamic>),
        statistics: (json['statistics'] as List<dynamic>?)
            ?.map((e) => Statistic.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'player': player?.toJson(),
        'statistics': statistics?.map((e) => e.toJson()).toList(),
      };
}
