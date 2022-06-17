class Coach {
  int? id;
  String? name;
  String? photo;

  Coach({this.id, this.name, this.photo});

  factory Coach.fromJson(Map<String, dynamic> json) => Coach(
        id: json['id'] as int?,
        name: json['name'] as String?,
        photo: json['photo'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'photo': photo,
      };
}
