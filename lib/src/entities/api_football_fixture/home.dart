class Home {
  int? id;
  String? name;
  String? logo;
  bool? winner;

  Home({this.id, this.name, this.logo, this.winner});

  factory Home.fromJson(Map<String, dynamic> json) => Home(
        id: json['id'] as int?,
        name: json['name'] as String?,
        logo: json['logo'] as String?,
        winner: json['winner'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo': logo,
        'winner': winner,
      };
}
