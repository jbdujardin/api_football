import 'goals.dart';
import 'loses.dart';
import 'streak.dart';
import 'wins.dart';

class Biggest {
  Streak? streak;
  Wins? wins;
  Loses? loses;
  Goals? goals;

  Biggest({this.streak, this.wins, this.loses, this.goals});

  factory Biggest.fromJson(Map<String, dynamic> json) => Biggest(
        streak: json['streak'] == null
            ? null
            : Streak.fromJson(json['streak'] as Map<String, dynamic>),
        wins: json['wins'] == null
            ? null
            : Wins.fromJson(json['wins'] as Map<String, dynamic>),
        loses: json['loses'] == null
            ? null
            : Loses.fromJson(json['loses'] as Map<String, dynamic>),
        goals: json['goals'] == null
            ? null
            : Goals.fromJson(json['goals'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'streak': streak?.toJson(),
        'wins': wins?.toJson(),
        'loses': loses?.toJson(),
        'goals': goals?.toJson(),
      };
}
