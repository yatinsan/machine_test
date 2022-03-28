import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:machine_test/config/constants/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

String token = '';

class Api {
  Future<bool> login({required String email, required String password}) async {
    var response = await http.post(Uri.parse(Urls.loginUrl),
        body: {'email': email, 'password': password});
    var responsejson = json.decode(response.body);
    if (response.statusCode == 200) {
      token = responsejson['data']['access_token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);
    }
    return response.statusCode == 200;
  }
}
