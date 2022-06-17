class Passes {
  int? total;
  int? key;
  String? accuracy;

  Passes({this.total, this.key, this.accuracy});

  factory Passes.fromJson(Map<String, dynamic> json) => Passes(
        total: json['total'] as int?,
        key: json['key'] as int?,
        accuracy: json['accuracy'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'key': key,
        'accuracy': accuracy,
      };
}
