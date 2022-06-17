import 'player.dart';
import 'team.dart';

class ApiFootballPlayer {
  Team? team;
  List<Player>? players;

  ApiFootballPlayer({this.team, this.players});

  factory ApiFootballPlayer.fromJson(Map<String, dynamic> json) =>
      ApiFootballPlayer(
        team: json['team'] == null
            ? null
            : Team.fromJson(json['team'] as Map<String, dynamic>),
        players: (json['players'] as List<dynamic>?)
            ?.map((e) => Player.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'team': team?.toJson(),
        'players': players?.map((e) => e.toJson()).toList(),
      };
}
