import 'att.dart';
import 'def.dart';
import 'form.dart';
import 'goals.dart';
import 'h2o_comparison.dart';
import 'poisson_distribution.dart';
import 'total_comparison.dart';

class Comparison {
  Form? form;
  Att? att;
  Def? def;
  PoissonDistribution? poissonDistribution;
  H2oComparison? h2h;
  Goals? goals;
  TotalComparison? total;

  Comparison({
    this.form,
    this.att,
    this.def,
    this.poissonDistribution,
    this.h2h,
    this.goals,
    this.total,
  });

  factory Comparison.fromJson(Map<String, dynamic> json) => Comparison(
        form: json['form'] == null
            ? null
            : Form.fromJson(json['form'] as Map<String, dynamic>),
        att: json['att'] == null
            ? null
            : Att.fromJson(json['att'] as Map<String, dynamic>),
        def: json['def'] == null
            ? null
            : Def.fromJson(json['def'] as Map<String, dynamic>),
        poissonDistribution: json['poisson_distribution'] == null
            ? null
            : PoissonDistribution.fromJson(
                json['poisson_distribution'] as Map<String, dynamic>),
        h2h: json['h2h'] == null
            ? null
            : H2oComparison.fromJson(json['h2h'] as Map<String, dynamic>),
        goals: json['goals'] == null
            ? null
            : Goals.fromJson(json['goals'] as Map<String, dynamic>),
        total: json['total'] == null
            ? null
            : TotalComparison.fromJson(json['total'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'form': form?.toJson(),
        'att': att?.toJson(),
        'def': def?.toJson(),
        'poisson_distribution': poissonDistribution?.toJson(),
        'h2h': h2h?.toJson(),
        'goals': goals?.toJson(),
        'total': total?.toJson(),
      };
}
