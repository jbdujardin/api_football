class Cards {
  int? yellow;
  int? red;

  Cards({this.yellow, this.red});

  factory Cards.fromJson(Map<String, dynamic> json) => Cards(
        yellow: json['yellow'] as int?,
        red: json['red'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'yellow': yellow,
        'red': red,
      };
}
