import 'package:api_football/api_football.dart';

void main() async {
  final apiFootballApi = ApiFootballAPI('<your_api_key>');

  final leaguesRepository = LeaguesRepository(apiFootballApi);
  final fixturesRepository = FixturesRepository(apiFootballApi);

  try {
    final rounds = await fixturesRepository.getRounds(leagueId: 61, season: 2022);
    print(rounds);
  } catch (e) {
    print(e);
  }
}
