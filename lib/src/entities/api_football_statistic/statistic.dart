class Statistic {
  String? type;
  dynamic value;

  Statistic({this.type, this.value});

  factory Statistic.fromJson(Map<String, dynamic> json) => Statistic(
        type: json['type'] as String?,
        value: json['value'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'value': value,
      };
}
