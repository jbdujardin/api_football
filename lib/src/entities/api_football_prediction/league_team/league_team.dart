import 'biggest.dart';
import 'cards.dart';
import 'clean_sheet.dart';
import 'failed_to_score.dart';
import 'fixtures.dart';
import 'goals.dart';
import 'lineup.dart';
import 'penalty.dart';

class LeagueTeam {
  String? form;
  Fixtures? fixtures;
  Goals? goals;
  Biggest? biggest;
  CleanSheet? cleanSheet;
  FailedToScore? failedToScore;
  Penalty? penalty;
  List<Lineup>? lineups;
  Cards? cards;

  LeagueTeam({
    this.form,
    this.fixtures,
    this.goals,
    this.biggest,
    this.cleanSheet,
    this.failedToScore,
    this.penalty,
    this.lineups,
    this.cards,
  });

  factory LeagueTeam.fromJson(Map<String, dynamic> json) => LeagueTeam(
        form: json['form'] as String?,
        fixtures: json['fixtures'] == null
            ? null
            : Fixtures.fromJson(json['fixtures'] as Map<String, dynamic>),
        goals: json['goals'] == null
            ? null
            : Goals.fromJson(json['goals'] as Map<String, dynamic>),
        biggest: json['biggest'] == null
            ? null
            : Biggest.fromJson(json['biggest'] as Map<String, dynamic>),
        cleanSheet: json['clean_sheet'] == null
            ? null
            : CleanSheet.fromJson(json['clean_sheet'] as Map<String, dynamic>),
        failedToScore: json['failed_to_score'] == null
            ? null
            : FailedToScore.fromJson(
                json['failed_to_score'] as Map<String, dynamic>),
        penalty: json['penalty'] == null
            ? null
            : Penalty.fromJson(json['penalty'] as Map<String, dynamic>),
        lineups: (json['lineups'] as List<dynamic>?)
            ?.map((e) => Lineup.fromJson(e as Map<String, dynamic>))
            .toList(),
        cards: json['cards'] == null
            ? null
            : Cards.fromJson(json['cards'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'form': form,
        'fixtures': fixtures?.toJson(),
        'goals': goals?.toJson(),
        'biggest': biggest?.toJson(),
        'clean_sheet': cleanSheet?.toJson(),
        'failed_to_score': failedToScore?.toJson(),
        'penalty': penalty?.toJson(),
        'lineups': lineups?.map((e) => e.toJson()).toList(),
        'cards': cards?.toJson(),
      };
}
