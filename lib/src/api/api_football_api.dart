import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiFootballAPI {
  final http.Client _client;
  final String _apiKey;

  ApiFootballAPI(this._apiKey) : _client = http.Client();

  static const String _apiScheme = "https";
  static const String _apiBaseUrl = "v3.football.api-sports.io";

  Uri _buildUri({
    required String path,
    Map<String, String>? parameters,
  }) {
    return Uri(
      scheme: _apiScheme,
      host: _apiBaseUrl,
      path: path,
      queryParameters: parameters,
    );
  }

  Map<String, String> get _headers => {
        'x-apisports-key': _apiKey,
      };

  Future<T> getData<T>({
    required String path,
    Map<String, String>? params,
    required T Function(dynamic data) builder,
  }) async {
    try {
      final uri = _buildUri(path: path, parameters: params);
      final response = await _client.get(uri, headers: _headers);
      switch (response.statusCode) {
        case 200:
          final data = json.decode(response.body);
          if ((data['errors'] is List) &&
              ((data['errors'] as List)).isNotEmpty) {
            final error = (data['errors'] as List).first;
            throw ((error as Map).values.first);
          } else if ((data['errors'] is Map)) {
            final error = data['errors'];
            throw ((error as Map).values.first);
          } else {
            return builder(data);
          }
        default:
          final data = json.decode(response.body);
          if (data['message'] != null) {
            throw (data['message']);
          } else {
            throw ('Error');
          }
      }
    } catch (err) {
      throw ('Connection Error');
    }
  }
}
