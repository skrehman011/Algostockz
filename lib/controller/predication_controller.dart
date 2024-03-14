import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PredicationController extends GetxController {
  String predictionsData = '';

  Future<void> fetchPredictionsData() async {
    final response = await http.get(
      "https://algostockz.onrender.com/api/get_predictions/date:2024-3-3/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/" as Uri
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      // setState(() {
        predictionsData = data.toString(); // Adjust based on the response structure
      // });
    } else {
      throw Exception('Failed to load predictions data');
    }
  }
}