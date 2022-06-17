import 'country.dart';
import 'league.dart';
import 'season.dart';

class ApiFootballLeague {
  League? league;
  Country? country;
  List<Season>? seasons;

  ApiFootballLeague({this.league, this.country, this.seasons});

  factory ApiFootballLeague.fromJson(Map<String, dynamic> json) =>
      ApiFootballLeague(
        league: json['league'] == null
            ? null
            : League.fromJson(json['league'] as Map<String, dynamic>),
        country: json['country'] == null
            ? null
            : Country.fromJson(json['country'] as Map<String, dynamic>),
        seasons: (json['seasons'] as List<dynamic>?)
            ?.map((e) => Season.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'league': league?.toJson(),
        'country': country?.toJson(),
        'seasons': seasons?.map((e) => e.toJson()).toList(),
      };
}
