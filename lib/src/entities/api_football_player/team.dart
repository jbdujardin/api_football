class Team {
  int? id;
  String? name;
  String? logo;
  String? update;

  Team({this.id, this.name, this.logo, this.update});

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json['id'] as int?,
        name: json['name'] as String?,
        logo: json['logo'] as String?,
        update: json['update'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo': logo,
        'update': update,
      };
}
