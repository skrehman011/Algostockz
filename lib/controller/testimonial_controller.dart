
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class TestimonialController extends GetxController{

  String message = '';
  bool loading = false;
  String name = '';
  Future<void> fetchTestimonial() async {
    // setState(() {
      loading = true;
    // });

    final url =
    "https://algostockz.onrender.com/api/get_testimonial/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print(jsonResponse);
      final jsonData = jsonDecode(response.body);
      if (jsonData is List && jsonData.isNotEmpty) {
        final data = jsonData[0];
        name = data['ticker'];
        message = data['price'];
        loading = false;
        update();
      }

    } else {
      // setState(() {
        loading = false;
        message = 'Failed to fetch testimonial.';
      // });
    }
  }
}