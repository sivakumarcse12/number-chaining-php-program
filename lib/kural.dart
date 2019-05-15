class Kural {
  final String line1;
  final String line2;
  final String mv;
  final int number;

  Kural({this.line1, this.line2, this.mv,this.number});

  factory Kural.fromJson(Map<String, dynamic> json) {
    return new Kural(
      line1: json['line3'] as String,
      line2: json['line2'] as String,
      mv: json['mv'] as String,
      number: json['number'] as int,
    );
  }
}