import 'draws.dart';
import 'loses.dart';
import 'played.dart';
import 'wins.dart';

class Fixtures {
  Played? played;
  Wins? wins;
  Draws? draws;
  Loses? loses;

  Fixtures({this.played, this.wins, this.draws, this.loses});

  factory Fixtures.fromJson(Map<String, dynamic> json) => Fixtures(
        played: json['played'] == null
            ? null
            : Played.fromJson(json['played'] as Map<String, dynamic>),
        wins: json['wins'] == null
            ? null
            : Wins.fromJson(json['wins'] as Map<String, dynamic>),
        draws: json['draws'] == null
            ? null
            : Draws.fromJson(json['draws'] as Map<String, dynamic>),
        loses: json['loses'] == null
            ? null
            : Loses.fromJson(json['loses'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'played': played?.toJson(),
        'wins': wins?.toJson(),
        'draws': draws?.toJson(),
        'loses': loses?.toJson(),
      };
}
