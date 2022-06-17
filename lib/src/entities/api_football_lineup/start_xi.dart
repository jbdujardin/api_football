import 'player.dart';

class StartXi {
  Player? player;

  StartXi({this.player});

  factory StartXi.fromJson(Map<String, dynamic> json) => StartXi(
        player: json['player'] == null
            ? null
            : Player.fromJson(json['player'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'player': player?.toJson(),
      };
}
