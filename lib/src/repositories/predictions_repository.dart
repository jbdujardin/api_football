import 'package:api_football/api_football.dart';

class PredictionsRepository {
  PredictionsRepository(this._api);
  final ApiFootballAPI _api;

  Future<ApiFootballPrediction?> getPrediction({required String fixtureId}) =>
      _api.getData(
        path: 'predictions',
        params: {
          "fixture": fixtureId,
        },
        builder: (data) {
          return data['results'] > 0
              ? ApiFootballPrediction.fromJson(data['response'][0])
              : null;
        },
      );
}
