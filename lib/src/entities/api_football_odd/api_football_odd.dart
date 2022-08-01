import 'bookmaker.dart';
import 'fixture.dart';
import 'league.dart';

class ApiFootballOdd {
  League? league;
  Fixture? fixture;
  String? update;
  List<Bookmaker>? bookmakers;

  ApiFootballOdd({this.league, this.fixture, this.update, this.bookmakers});

  factory ApiFootballOdd.fromJson(Map<String, dynamic> json) => ApiFootballOdd(
        league: json['league'] == null ? null : League.fromJson(json['league'] as Map<String, dynamic>),
        fixture: json['fixture'] == null ? null : Fixture.fromJson(json['fixture'] as Map<String, dynamic>),
        update: json['update'] as String?,
        bookmakers: (json['bookmakers'] as List<dynamic>?)?.map((e) => Bookmaker.fromJson(e as Map<String, dynamic>)).toList(),
      );

  Map<String, dynamic> toJson() => {
        'league': league?.toJson(),
        'fixture': fixture?.toJson(),
        'update': update,
        'bookmakers': bookmakers?.map((e) => e.toJson()).toList(),
      };
}
