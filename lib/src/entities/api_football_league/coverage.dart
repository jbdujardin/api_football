import 'fixtures.dart';

class Coverage {
  Fixtures? fixtures;
  bool? standings;
  bool? players;
  bool? topScorers;
  bool? topAssists;
  bool? topCards;
  bool? injuries;
  bool? predictions;
  bool? odds;

  Coverage({
    this.fixtures,
    this.standings,
    this.players,
    this.topScorers,
    this.topAssists,
    this.topCards,
    this.injuries,
    this.predictions,
    this.odds,
  });

  factory Coverage.fromJson(Map<String, dynamic> json) => Coverage(
        fixtures: json['fixtures'] == null
            ? null
            : Fixtures.fromJson(json['fixtures'] as Map<String, dynamic>),
        standings: json['standings'] as bool?,
        players: json['players'] as bool?,
        topScorers: json['top_scorers'] as bool?,
        topAssists: json['top_assists'] as bool?,
        topCards: json['top_cards'] as bool?,
        injuries: json['injuries'] as bool?,
        predictions: json['predictions'] as bool?,
        odds: json['odds'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'fixtures': fixtures?.toJson(),
        'standings': standings,
        'players': players,
        'top_scorers': topScorers,
        'top_assists': topAssists,
        'top_cards': topCards,
        'injuries': injuries,
        'predictions': predictions,
        'odds': odds,
      };
}
