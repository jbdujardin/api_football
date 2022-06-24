import 'package:api_football/api_football.dart';

class FixturesRepository {
  FixturesRepository(this._api);
  final ApiFootballAPI _api;

  Future<List<ApiFootballFixture>> getFixtures({required int leagueId, required int season}) => _api.getData(
        path: 'fixtures',
        params: {
          'league': leagueId.toString(),
          'season': season.toString(),
        },
        builder: (data) {
          return (data['response'] as List).map((json) => ApiFootballFixture.fromJson(json)).toList();
        },
      );

  Future<List<String>> getRounds({required int leagueId, required int season}) => _api.getData(
        path: 'fixtures/rounds',
        params: {
          'league': leagueId.toString(),
          'season': season.toString(),
        },
        builder: (data) {
          return List<String>.from(data['response']);
        },
      );

  Future<ApiFootballFixture> getFixture({required String fixtureId}) => _api.getData(
        path: 'fixtures',
        params: {
          "id": fixtureId,
        },
        builder: (data) {
          return (data['response'] as List).map((json) => ApiFootballFixture.fromJson(json)).toList().first;
        },
      );

  Future<List<ApiFootballFixture>> getFixturesDetails({required List<String> fixturesIds}) => _api.getData(
        path: 'fixtures',
        params: {
          "ids": fixturesIds.join('-'),
        },
        builder: (data) {
          return (data['response'] as List).map((json) => ApiFootballFixture.fromJson(json)).toList();
        },
      );
}
