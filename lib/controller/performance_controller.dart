import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:http/http.dart' as http;

class PerformanceController extends GetxController {

  String ticker = '';
  double price = 0.0;
  String signal = '';
  double target = 0.0 ;


  Future<void> fetchPerformanceData() async {
    final url = Uri.parse("https://algostockz.onrender.com/api/get_performance/date:2024-3-3/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/");

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {

        final jsonData = jsonDecode(response.body);
        if (jsonData is List && jsonData.isNotEmpty) {
          final data = jsonData[0];
          // ticker = data['ticker'];
          // price = data['price'];
          // target = data['target'];
          // signal = data['signal'];
          update();

        print('Response: ${response.body}');
      } else {
        print('Failed to fetch data. Status Code: ${response.statusCode}');
      }

    }
  } catch (error) {
    print('Error: $error');
  }
} }
