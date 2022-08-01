class Fixture {
  int? id;
  String? timezone;
  String? date;
  int? timestamp;

  Fixture({this.id, this.timezone, this.date, this.timestamp});

  factory Fixture.fromJson(Map<String, dynamic> json) => Fixture(
        id: json['id'] as int?,
        timezone: json['timezone'] as String?,
        date: json['date'] as String?,
        timestamp: json['timestamp'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'timezone': timezone,
        'date': date,
        'timestamp': timestamp,
      };
}
