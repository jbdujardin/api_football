class League {
  int? id;
  String? name;
  String? type;
  String? logo;

  League({this.id, this.name, this.type, this.logo});

  factory League.fromJson(Map<String, dynamic> json) => League(
        id: json['id'] as int?,
        name: json['name'] as String?,
        type: json['type'] as String?,
        logo: json['logo'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'logo': logo,
      };
}
