class Winner {
  int? id;
  String? name;
  String? comment;

  Winner({this.id, this.name, this.comment});

  factory Winner.fromJson(Map<String, dynamic> json) => Winner(
        id: json['id'] as int?,
        name: json['name'] as String?,
        comment: json['comment'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'comment': comment,
      };
}
