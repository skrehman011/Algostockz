class ModelPrediction {
  final int id;
  final String ticker;
  final double price;
  final double target;
  final String signal;
  final List<int> votes;
  final int rank;
  final String date;

  ModelPrediction({
    required this.id,
    required this.ticker,
    required this.price,
    required this.target,
    required this.signal,
    required this.votes,
    required this.rank,
    required this.date,
  });

  factory ModelPrediction.fromJson(Map<String, dynamic> json) {
    return ModelPrediction(
      id: json['id'] ?? 0,
      ticker: json['ticker'] ?? '',
      price: json['price'] ?? 0.0,
      target: json['target'] ?? 0.0,
      signal: json['signal'] ?? '',
      votes: json['votes'] != null ? List<int>.from(json['votes']) : [],
      rank: json['rank'] ?? 0,
      date: json['date'] ?? '',
    );
  }
}
