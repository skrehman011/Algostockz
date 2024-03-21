import 'dart:convert';
import 'dart:developer';
import 'package:algostocks/model/user.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class UserController extends GetxController {
  RxList<User> userAccounts = <User>[].obs;

  Future<void> fetchUserAccounts() async {
    try {
      final response = await http.get(
        Uri.parse('http://algostockz.onrender.com/api/get_user_accounts/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/'),
      );
      log(response.body);
      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);
        List<User> userList = jsonData.map((item) => User.fromJson(item)).toList();
        userAccounts.assignAll(userList);
        print(userAccounts);
      } else {
        throw Exception('Failed to load user accounts');
      }
    } catch (e) {
      throw Exception('Error fetching user accounts: $e');
    }
  }
  @override
  void onInit() {
    fetchUserAccounts();
    super.onInit();
  }
}
