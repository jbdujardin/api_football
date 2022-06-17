class Value {
  String? value;
  String? odd;

  Value({this.value, this.odd});

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        value: json['value'] as String?,
        odd: json['odd'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'value': value,
        'odd': odd,
      };
}
