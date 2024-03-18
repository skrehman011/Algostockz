import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FaqsController extends GetxController {
  List<dynamic> faqs = [];

  Future<void> fetchFAQs() async {
    final url = Uri.parse("http://127.0.0.1:8000/api/get_faqs/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988//date:2024-3-3/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/");
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        print(jsonData);
        if (jsonData is List && jsonData.isNotEmpty) {
          final data = jsonData[0];
          update();

          print('Response faqs: ${response.body}');
        } else {
          print('Failed to fetch data. Status Code: ${response.statusCode}');
        }

      }
    } catch (error) {
      print('Error: $error');
    }

  }
}

// }
