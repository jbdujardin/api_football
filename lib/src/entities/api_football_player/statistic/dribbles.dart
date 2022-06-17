class Dribbles {
  int? attempts;
  int? success;
  int? past;

  Dribbles({this.attempts, this.success, this.past});

  factory Dribbles.fromJson(Map<String, dynamic> json) => Dribbles(
        attempts: json['attempts'] as int?,
        success: json['success'] as int?,
        past: json['past'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'attempts': attempts,
        'success': success,
        'past': past,
      };
}
