
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
class TestimonialController extends GetxController{

  String _testimonial = '';
  bool _loading = false;

  Future<void> _fetchTestimonial() async {
    // setState(() {
      _loading = true;
    // });

    final url =
    "https://algostockz.onrender.com/api/get_testimonial/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      // setState(() {
        _testimonial = jsonResponse['testimonial'];
        _loading = false;
      // });
    } else {
      // setState(() {
        _loading = false;
        _testimonial = 'Failed to fetch testimonial.';
      // });
    }
  }
}