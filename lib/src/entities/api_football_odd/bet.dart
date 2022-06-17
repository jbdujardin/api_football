import 'value.dart';

class Bet {
  int? id;
  String? name;
  List<Value>? values;

  Bet({this.id, this.name, this.values});

  factory Bet.fromJson(Map<String, dynamic> json) => Bet(
        id: json['id'] as int?,
        name: json['name'] as String?,
        values: (json['values'] as List<dynamic>?)
            ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'values': values?.map((e) => e.toJson()).toList(),
      };
}
