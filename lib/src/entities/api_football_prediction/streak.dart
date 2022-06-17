class Streak {
  int? wins;
  int? draws;
  int? loses;

  Streak({this.wins, this.draws, this.loses});

  factory Streak.fromJson(Map<String, dynamic> json) => Streak(
        wins: json['wins'] as int?,
        draws: json['draws'] as int?,
        loses: json['loses'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'wins': wins,
        'draws': draws,
        'loses': loses,
      };
}
