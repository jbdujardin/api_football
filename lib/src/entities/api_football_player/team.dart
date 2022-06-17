class Team {
  int? id;
  String? name;
  String? logo;
  DateTime? update;

  Team({this.id, this.name, this.logo, this.update});

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json['id'] as int?,
        name: json['name'] as String?,
        logo: json['logo'] as String?,
        update: json['update'] == null
            ? null
            : DateTime.parse(json['update'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo': logo,
        'update': update?.toIso8601String(),
      };
}
