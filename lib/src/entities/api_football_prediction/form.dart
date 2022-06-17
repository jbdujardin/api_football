class Form {
  String? home;
  String? away;

  Form({this.home, this.away});

  factory Form.fromJson(Map<String, dynamic> json) => Form(
        home: json['home'] as String?,
        away: json['away'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'home': home,
        'away': away,
      };
}
