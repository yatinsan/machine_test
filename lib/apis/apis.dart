import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:machine_test/config/constants/urls.dart';
import 'package:machine_test/model/employs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

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
      print(token);
    }
    print(responsejson['message']);
    return response.statusCode == 200;
  }

  Future<List<Employs>?> getEmploys(BuildContext context) async {
    var response = await http.get(Uri.parse(Urls.getemployees), headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token'
    });
    var responsejson = json.decode(response.body);
    print(response.statusCode);
    if (response.statusCode == 401) {
      print('Unauthenticatedass');
      Navigator.pushReplacementNamed(context, '/');
    }
    print(responsejson['message']);
    if (response.statusCode == 200) {
      return (responsejson['data']['data'] as List)
          .map((i) => Employs.fromJson(i))
          .toList();
    }
    return null;
  }
}

class ApiDio {
  static Future<bool> login(
      {required String email, required String password}) async {
    var dio = Dio();
    print("login");
    var response = await dio
        .post(Urls.loginUrl, data: {'email': email, 'password': password});
    print("response = ${response.data}");
    stateserror(response.statusCode ?? 404);
    return response.statusCode == 200;
  }
}

String stateserror(int code) {
  switch (code) {
    case 400:
      return 'Bad Request';
    case 401:
      token = '';
      return 'Unauthorized';
    case 403:
      return 'Forbidden';
    case 404:
      return 'Not Found';
    case 500:
      return 'Internal Server Error';
    case 502:
      return 'Bad Gateway';
    case 503:
      return 'Service Unavailable';
    default:
      return 'Unknown';
  }
}
