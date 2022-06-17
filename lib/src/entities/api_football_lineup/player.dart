class Player {
  int? id;
  String? name;
  int? number;
  String? pos;
  String? grid;

  Player({this.id, this.name, this.number, this.pos, this.grid});

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        id: json['id'] as int?,
        name: json['name'] as String?,
        number: json['number'] as int?,
        pos: json['pos'] as String?,
        grid: json['grid'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'number': number,
        'pos': pos,
        'grid': grid,
      };
}
