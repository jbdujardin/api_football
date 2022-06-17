class Tackles {
  int? total;
  int? blocks;
  int? interceptions;

  Tackles({this.total, this.blocks, this.interceptions});

  factory Tackles.fromJson(Map<String, dynamic> json) => Tackles(
        total: json['total'] as int?,
        blocks: json['blocks'] as int?,
        interceptions: json['interceptions'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'blocks': blocks,
        'interceptions': interceptions,
      };
}
