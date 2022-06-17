class Lineup {
  String? formation;
  int? played;

  Lineup({this.formation, this.played});

  factory Lineup.fromJson(Map<String, dynamic> json) => Lineup(
        formation: json['formation'] as String?,
        played: json['played'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'formation': formation,
        'played': played,
      };
}
