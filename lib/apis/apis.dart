import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:machine_test/config/constants/urls.dart';
import 'package:machine_test/model/employs.dart';
import 'package:shared_preferences/shared_preferences.dart';

String token = '';

class Api {
  Future<bool> login({required String email, required String password}) async {
    var response = await http.post(Uri.parse(Urls.loginUrl), body: {'email': email, 'password': password});
    var responsejson = json.decode(response.body);
    if (response.statusCode == 200) {
      token = responsejson['data']['access_token'];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);
    }
    return response.statusCode == 200;
  }

  Future<List<Employs>?> getEmploys() async {
    var response = await http
        .get(Uri.parse(Urls.getemployees), headers: {'Accept': 'application/json', 'Authorization': 'Bearer $token'});
    var responsejson = json.decode(response.body);
    if (response.statusCode == 200) {
      return (responsejson['data']['data'] as List).map((i) => Employs.fromJson(i)).toList();
    }
    return null;
  }
}
