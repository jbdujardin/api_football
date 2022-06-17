class Fixture {
  int? id;
  String? timezone;
  DateTime? date;
  int? timestamp;

  Fixture({this.id, this.timezone, this.date, this.timestamp});

  factory Fixture.fromJson(Map<String, dynamic> json) => Fixture(
        id: json['id'] as int?,
        timezone: json['timezone'] as String?,
        date: json['date'] == null
            ? null
            : DateTime.parse(json['date'] as String),
        timestamp: json['timestamp'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'timezone': timezone,
        'date': date?.toIso8601String(),
        'timestamp': timestamp,
      };
}
