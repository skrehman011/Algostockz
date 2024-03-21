import 'dart:convert';
import 'dart:developer';
import 'package:algostocks/model/FAQ.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class FaqsController extends GetxController {
  RxList<FAQ> faqs = <FAQ>[].obs;
  RxString faqResponse="".obs;
  RxBool loading=false.obs;

  Future<void> fetchFAQs() async {

    try {
      loading.value=true;

      final url = Uri.parse("http://algostockz.onrender.com/api/get_faqs/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        if (jsonData is List) {
          faqs.assignAll(jsonData.map((item) => FAQ.fromJson(item)).toList());
          log(jsonData.toString());
          faqResponse.value="success";
          loading.value=false;
        } else {
          faqResponse.value="API response is not a list";
          print('API response is not a list');
          loading.value=false;

        }
      } else {
        faqResponse.value="Failed to fetch data. Status Code: ${response.statusCode}";
        loading.value=false;

        print('Failed to fetch data. Status Code: ${response.statusCode}');
      }
    } catch (error) {
      loading.value=false;

      print('Error: $error');
    }
  }
  @override
  void onInit() {
    fetchFAQs();
    super.onInit();
  }
}
