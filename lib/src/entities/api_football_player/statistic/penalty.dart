class Penalty {
  int? won;
  int? commited;
  int? scored;
  int? missed;
  int? saved;

  Penalty({this.won, this.commited, this.scored, this.missed, this.saved});

  factory Penalty.fromJson(Map<String, dynamic> json) => Penalty(
        won: json['won'] as int?,
        commited: json['commited'] as int?,
        scored: json['scored'] as int?,
        missed: json['missed'] as int?,
        saved: json['saved'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'won': won,
        'commited': commited,
        'scored': scored,
        'missed': missed,
        'saved': saved,
      };
}
