import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CheckApiController extends GetxController{
  Future<Map<String, dynamic>> fetchTestimonial(String email, String apiKey) async {
    final String baseUrl = "https://algostockz.onrender.com/api/get_testimonial/email:admin@gmail.com/api_key:6be513c236a047ce90231ed122c4d988/"; // Replace with your API base URL
    final String endpoint = "/api/get_testimonial";
    final String format = "?format=api";
    final String url = "$baseUrl$endpoint/email:$email/api_key:$apiKey/$format";

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        // If the server returns a 200 OK response, parse the JSON
        return jsonDecode(response.body);
      } else {
        // If the server did not return a 200 OK response, throw an exception
        throw Exception('Failed to load testimonial');
      }
    } catch (e) {
      // Catch any errors that might occur during the HTTP request
      print("Error fetching testimonial: $e");
      throw Exception('Failed to load testimonial');
    }
  }
}