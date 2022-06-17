class PlayerInfos {
  int? id;
  String? name;
  String? photo;

  PlayerInfos({this.id, this.name, this.photo});

  factory PlayerInfos.fromJson(Map<String, dynamic> json) => PlayerInfos(
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
