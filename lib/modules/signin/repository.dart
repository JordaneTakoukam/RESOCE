import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:resoce/.config.dart';

class SignInRepository {

  Future<Map<String, dynamic>> loginApi({
    required String login,
    required String password,
  }) async {
    final url = Uri.parse('${AppConfig.api}/api/v1/auth/signin/client');

    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          "login": login,
          "password": password,
        }),
      );

      if (response.statusCode == 200) {
        return {
          "message": null,
          "data": jsonDecode(response.body),
        };
      } else {
        var responseData = jsonDecode(response.body);
        return {
          "message": responseData['message'],
          "data": null,
        };
      }
    } catch (error) {
      // Handle network errors or other exceptions
      return {
        "message": "An error occurred",
        "data": null,
      };
    }
  }
}
