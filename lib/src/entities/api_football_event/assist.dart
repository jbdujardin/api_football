class Assist {
  int? id;
  String? name;

  Assist({this.id, this.name});

  factory Assist.fromJson(Map<String, dynamic> json) => Assist(
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
