
import 'dart:convert';

class PerformanceData {
  final int id;
  final String ticker;
  final double price;
  final double target;
  final String signal;
  final String status;
  final String date;

  PerformanceData({
    required this.id,
    required this.ticker,
    required this.price,
    required this.target,
    required this.signal,
    required this.status,
    required this.date,
  });

  factory PerformanceData.fromJson(Map<String, dynamic> json) {
    return PerformanceData(
      id: json['id'],
      ticker: json['ticker'],
      price: json['price'].toDouble(),
      target: json['target'].toDouble(),
      signal: json['signal'],
      status: json['status'],
      date: json['date'],
    );
  }
}

