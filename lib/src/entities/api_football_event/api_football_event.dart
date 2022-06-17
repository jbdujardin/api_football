import 'assist.dart';
import 'player.dart';
import 'team.dart';
import 'time.dart';

class ApiFootballEvent {
  Time? time;
  Team? team;
  Player? player;
  Assist? assist;
  String? type;
  String? detail;
  String? comments;

  ApiFootballEvent({
    this.time,
    this.team,
    this.player,
    this.assist,
    this.type,
    this.detail,
    this.comments,
  });

  factory ApiFootballEvent.fromJson(Map<String, dynamic> json) =>
      ApiFootballEvent(
        time: json['time'] == null
            ? null
            : Time.fromJson(json['time'] as Map<String, dynamic>),
        team: json['team'] == null
            ? null
            : Team.fromJson(json['team'] as Map<String, dynamic>),
        player: json['player'] == null
            ? null
            : Player.fromJson(json['player'] as Map<String, dynamic>),
        assist: json['assist'] == null
            ? null
            : Assist.fromJson(json['assist'] as Map<String, dynamic>),
        type: json['type'] as String?,
        detail: json['detail'] as String?,
        comments: json['comments'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'time': time?.toJson(),
        'team': team?.toJson(),
        'player': player?.toJson(),
        'assist': assist?.toJson(),
        'type': type,
        'detail': detail,
        'comments': comments,
      };
}
