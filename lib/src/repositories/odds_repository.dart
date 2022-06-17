import 'package:api_football/api_football.dart';

class OddsRepository {
  OddsRepository(this._api);
  final ApiFootballAPI _api;

  Future<List<ApiFootballOdd>> getOdds(
      {required int leagueId, required int season}) async {
    List<ApiFootballOdd> returnList = [];
    int page = 1;
    final responseJson = await _getOddsForPage(leagueId, season, page);
    final int total = responseJson['paging']['total'];
    returnList.addAll((responseJson['response'] as List)
        .map((json) => ApiFootballOdd.fromJson(json))
        .toList());
    while (total != page) {
      page++;
      final responseJson = await _getOddsForPage(leagueId, season, page);
      returnList.addAll((responseJson['response'] as List)
          .map((json) => ApiFootballOdd.fromJson(json))
          .toList());
    }
    return returnList;
  }

  Future<dynamic> _getOddsForPage(int leagueId, int season, int page) async {
    return await _api.getData(
        path: 'odds',
        params: {
          'league': leagueId.toString(),
          'season': season.toString(),
          'bet': '1',
          'page': page.toString(),
        },
        builder: (data) {
          return data;
        });
  }
}
