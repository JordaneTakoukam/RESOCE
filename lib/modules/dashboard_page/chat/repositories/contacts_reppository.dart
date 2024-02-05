import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:resoce/.config.dart';

class ContactListRepository {
  Future<Map<String, dynamic>> getContactList({
    required List<String> companyIds,
    required String token,
  }) async {
    String queryString =
        companyIds.length == 1 ? companyIds.first : companyIds.join(",");

    final url = Uri.parse(
        '${AppConfig.api}/api/v1/client/contacts-client/get?companyIds=$queryString');

    try {
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': token,
        },
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
