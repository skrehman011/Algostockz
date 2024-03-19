import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/model_testimonial.dart';
class TestimonialController extends GetxController{

  RxString message = ''.obs;
  bool loading = false;
  RxString name = ''.obs;
  RxList<ModelTestimonial> modelTestimonial = <ModelTestimonial>[].obs;

  Future<void> fetchTestimonial() async {
    // setState(() {
      loading = true;
    // });

    final url = Uri.parse("https://algostockz.onrender.com/api/get_testimonial/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/");

      try {
        final response = await http.get(url);
        if (response.statusCode == 200) {
          final jsonData = jsonDecode(response.body) as List<dynamic>;
          List<ModelTestimonial> dataList = jsonData.map((data) => ModelTestimonial.fromJson(data)).toList();
          modelTestimonial.value = dataList;
          update();
        }
      } catch (error) {
        print('Error: $error');
      }
  }
  @override
  void onInit() {
    fetchTestimonial();
    super.onInit();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}