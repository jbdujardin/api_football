import 'colors.dart';

class Team {
  int? id;
  String? name;
  String? logo;
  Colors? colors;

  Team({this.id, this.name, this.logo, this.colors});

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json['id'] as int?,
        name: json['name'] as String?,
        logo: json['logo'] as String?,
        colors: json['colors'] == null
            ? null
            : Colors.fromJson(json['colors'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo': logo,
        'colors': colors?.toJson(),
      };
}
