import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/model_faqs.dart';

class FaqsController extends GetxController {
  List<FaqModel> faqs = [];

  Future<void> fetchFAQs() async {
    try {
      final url = Uri.parse("http://127.0.0.1:8000/api/get_faqs/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/");
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        if (jsonData is List) {
          faqs = jsonData.map((item) => FaqModel.fromJson(item)).toList();
          log(jsonData.toString());
          update();
        } else {
          print('API response is not a list');
        }
      } else {
        print('Failed to fetch data. Status Code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }
}
