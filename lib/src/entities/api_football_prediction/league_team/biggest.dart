import 'biggest_goals/biggest_goals.dart';
import 'biggest_loses.dart';
import 'biggest_wins.dart';
import 'streak.dart';

class Biggest {
  Streak? streak;
  BiggestWins? wins;
  BiggestLoses? loses;
  BiggestGoals? goals;

  Biggest({this.streak, this.wins, this.loses, this.goals});

  factory Biggest.fromJson(Map<String, dynamic> json) => Biggest(
        streak: json['streak'] == null ? null : Streak.fromJson(json['streak'] as Map<String, dynamic>),
        wins: json['wins'] == null ? null : BiggestWins.fromJson(json['wins'] as Map<String, dynamic>),
        loses: json['loses'] == null ? null : BiggestLoses.fromJson(json['loses'] as Map<String, dynamic>),
        goals: json['goals'] == null ? null : BiggestGoals.fromJson(json['goals'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'streak': streak?.toJson(),
        'wins': wins?.toJson(),
        'loses': loses?.toJson(),
        'goals': goals?.toJson(),
      };
}
