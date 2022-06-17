class Games {
  int? minutes;
  int? number;
  String? position;
  String? rating;
  bool? captain;
  bool? substitute;

  Games({
    this.minutes,
    this.number,
    this.position,
    this.rating,
    this.captain,
    this.substitute,
  });

  factory Games.fromJson(Map<String, dynamic> json) => Games(
        minutes: json['minutes'] as int?,
        number: json['number'] as int?,
        position: json['position'] as String?,
        rating: json['rating'] as String?,
        captain: json['captain'] as bool?,
        substitute: json['substitute'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'minutes': minutes,
        'number': number,
        'position': position,
        'rating': rating,
        'captain': captain,
        'substitute': substitute,
      };
}
