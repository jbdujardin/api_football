import 'goalkeeper_color.dart';
import 'player_color.dart';

class Colors {
  PlayerColor? player;
  GoalkeeperColor? goalkeeper;

  Colors({this.player, this.goalkeeper});

  factory Colors.fromJson(Map<String, dynamic> json) => Colors(
        player: json['player'] == null
            ? null
            : PlayerColor.fromJson(json['player'] as Map<String, dynamic>),
        goalkeeper: json['goalkeeper'] == null
            ? null
            : GoalkeeperColor.fromJson(
                json['goalkeeper'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'player': player?.toJson(),
        'goalkeeper': goalkeeper?.toJson(),
      };
}
