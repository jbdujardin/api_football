import 'last5.dart';
import 'league_team/league_team.dart';

class Away {
  int? id;
  String? name;
  String? logo;
  Last5? last5;
  LeagueTeam? league;

  Away({this.id, this.name, this.logo, this.last5, this.league});

  factory Away.fromJson(Map<String, dynamic> json) => Away(
        id: json['id'] as int?,
        name: json['name'] as String?,
        logo: json['logo'] as String?,
        last5: json['last_5'] == null
            ? null
            : Last5.fromJson(json['last_5'] as Map<String, dynamic>),
        league: json['league'] == null
            ? null
            : LeagueTeam.fromJson(json['league'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo': logo,
        'last_5': last5?.toJson(),
        'league': league?.toJson(),
      };
}
