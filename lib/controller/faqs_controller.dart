import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FaqsController extends GetxController {
  List<dynamic> faqs = [];

  Future<void> fetchFAQs() async {
    try {
      final url = Uri.parse("http://127.0.0.1:8000/api/get_faqs/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/");
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        // Assuming your API returns a list of FAQs
        if (jsonData is List) {
          faqs = jsonData;
          // Notify listeners that the data has changed
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
