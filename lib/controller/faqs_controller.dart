import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FaqsController extends GetxController {
  List<dynamic> faqs = [];

  Future<void> fetchFAQs() async {
    final response = await http.get(
        "http://127.0.0.1:8000/api/get_user_accounts/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/" as Uri
    );

    if (response.statusCode == 200) {
      // setState(() {
        faqs = jsonDecode(response.body);
      // });
    } else {
      throw Exception('Failed to load FAQs');
    }
  }

}