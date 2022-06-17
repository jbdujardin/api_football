import 'player.dart';

class Substitute {
  Player? player;

  Substitute({this.player});

  factory Substitute.fromJson(Map<String, dynamic> json) => Substitute(
        player: json['player'] == null
            ? null
            : Player.fromJson(json['player'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'player': player?.toJson(),
      };
}
