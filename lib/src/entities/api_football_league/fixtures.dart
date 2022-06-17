class Fixtures {
  bool? events;
  bool? lineups;
  bool? statisticsFixtures;
  bool? statisticsPlayers;

  Fixtures({
    this.events,
    this.lineups,
    this.statisticsFixtures,
    this.statisticsPlayers,
  });

  factory Fixtures.fromJson(Map<String, dynamic> json) => Fixtures(
        events: json['events'] as bool?,
        lineups: json['lineups'] as bool?,
        statisticsFixtures: json['statistics_fixtures'] as bool?,
        statisticsPlayers: json['statistics_players'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'events': events,
        'lineups': lineups,
        'statistics_fixtures': statisticsFixtures,
        'statistics_players': statisticsPlayers,
      };
}
