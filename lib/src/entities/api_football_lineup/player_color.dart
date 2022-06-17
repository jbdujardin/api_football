class PlayerColor {
  String? primary;
  String? number;
  String? border;

  PlayerColor({this.primary, this.number, this.border});

  factory PlayerColor.fromJson(Map<String, dynamic> json) => PlayerColor(
        primary: json['primary'] as String?,
        number: json['number'] as String?,
        border: json['border'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'primary': primary,
        'number': number,
        'border': border,
      };
}
