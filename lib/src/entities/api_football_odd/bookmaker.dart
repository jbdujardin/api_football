import 'bet.dart';

class Bookmaker {
  int? id;
  String? name;
  List<Bet>? bets;

  Bookmaker({this.id, this.name, this.bets});

  factory Bookmaker.fromJson(Map<String, dynamic> json) => Bookmaker(
        id: json['id'] as int?,
        name: json['name'] as String?,
        bets: (json['bets'] as List<dynamic>?)
            ?.map((e) => Bet.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'bets': bets?.map((e) => e.toJson()).toList(),
      };
}
