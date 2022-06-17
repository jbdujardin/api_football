import 'goals_last5.dart';

class Last5 {
  String? form;
  String? att;
  String? def;
  GoalsLast5? goals;

  Last5({this.form, this.att, this.def, this.goals});

  factory Last5.fromJson(Map<String, dynamic> json) => Last5(
        form: json['form'] as String?,
        att: json['att'] as String?,
        def: json['def'] as String?,
        goals: json['goals'] == null
            ? null
            : GoalsLast5.fromJson(json['goals'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'form': form,
        'att': att,
        'def': def,
        'goals': goals?.toJson(),
      };
}
