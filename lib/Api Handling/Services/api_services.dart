import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:yam_baba_e_commerce/Api%20Handling/Models/api_models.dart';

class ApiService {
  //dummy base url
  static const String baseUrl = 'https://fakeapidata.com';

  //=====================Login=======================

  static Future login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(response.body);
    }
  }

  //=====================Signup=======================

  static Future<Map<String, dynamic>> signup(
      String firstname, String lastname, String email, String password) async {
    // final response = await http.post(
    //   Uri.parse('$baseUrl/signup'),
    final response = await http.post(
      Uri.parse('$baseUrl/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "email": email,
        "password": password,
        "name": {"firstname": firstname, "lastname": lastname},
        "address": {
          "city": 'kilcoole',
          "street": '7835 new road',
          "number": 3,
          "zipcode": '12926-3874',
          "geolocation": {"lat": '-37.3159', "long": '81.1496'}
        },
        "phone": '1-570-236-7033'
      }),
    );
    log('Response: ${response.statusCode}');
    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception(jsonDecode(response.body)['message']);
    }
  }
}
