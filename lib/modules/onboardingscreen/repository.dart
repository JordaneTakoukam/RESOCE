import 'package:resoce/.config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class OnBoardingRepository {
  Future<dynamic> getDataOnboarding() async {
    final url = Uri.parse('${AppConfig.api}/api/v1/statics/sliders');

    try {
      final response = await http.get(url, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });

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

  //
  //

  Future<dynamic> getCountriesData() async {
    final url = Uri.parse('${AppConfig.api}/api/v1/statics/countries');

    try {
      final response = await http.get(url, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });

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
