class GoalkeeperColor {
  String? primary;
  String? number;
  String? border;

  GoalkeeperColor({this.primary, this.number, this.border});

  factory GoalkeeperColor.fromJson(Map<String, dynamic> json) =>
      GoalkeeperColor(
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
