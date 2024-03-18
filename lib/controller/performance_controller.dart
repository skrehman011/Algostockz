import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

import '../model/model_performance.dart';

class PerformanceController extends GetxController {

  RxString ticker = ''.obs;
  RxDouble price = 0.0.obs;
  RxString signal = ''.obs;
  RxDouble target = 0.0.obs ;
  RxList<PerformanceData> performanceData = <PerformanceData>[].obs;


  Future<void> fetchPerformanceData() async {
    final url = Uri.parse("https://algostockz.onrender.com/api/get_performance/date:2024-3-3/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/");

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as List<dynamic>;
        List<PerformanceData> dataList = jsonData.map((data) => PerformanceData.fromJson(data)).toList();
        performanceData.value = dataList;
        update();
      }
    } catch (error) {
      print('Error: $error');
    }
  }
@override
  void onInit() {
    fetchPerformanceData();
    super.onInit();
  }
}
