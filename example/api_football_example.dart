import 'package:api_football/api_football.dart';

void main() async {
  final apiFootballApi = ApiFootballAPI('<your_api_key>');

  final leaguesRepository = LeaguesRepository(apiFootballApi);

  try {
    final league = await leaguesRepository.getLeague(leagueId: "61");
    print(league);
  } catch (e) {
    print(e);
  }
}
