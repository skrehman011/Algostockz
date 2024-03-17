import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class UserController extends GetxController {
  List<dynamic> userAccounts = [];

  Future<void> fetchUserAccounts() async {
    try {
      final response = await http.get(
        Uri.parse('http://127.0.0.1:8000/api/get_user_accounts/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/'),
      );

      if (response.statusCode == 200) {
        userAccounts = jsonDecode(response.body);
        print(userAccounts);
      } else {
        throw Exception('Failed to load user accounts');
      }
    } catch (e) {
      throw Exception('Error fetching user accounts: $e');
    }
  }
}
