import 'dart:convert';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../model/model_prediction.dart';

class PredictionController extends GetxController {
  RxString ticker = ''.obs;
  RxDouble price = 0.0.obs;
  RxString signal = ''.obs;
  RxDouble target = 0.0.obs ;
  RxList<ModelPrediction> predictionData = <ModelPrediction>[].obs;

  Future<void> fetchPredictionData() async {
    final url = Uri.parse("https://algostockz.onrender.com/api/get_predictions/date:2024-3-3/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/");

    try {
      final response = await http.get(url);
      log("Prediction ${response.body.toString()}");
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        List<ModelPrediction> dataList = jsonData.map((data) => ModelPrediction.fromJson(data)).toList();
        predictionData.assignAll(dataList);
        log(jsonData.toString());
        update();
      } else {
        throw Exception('Failed to load predictions data: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching predictions data: $error');
    }
  }

  @override
  void onInit() {
    fetchPredictionData();
    super.onInit();
  }

  @override
  void dispose() {
    // Clean up resources here if needed
    super.dispose();
  }
}
