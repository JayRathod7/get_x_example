import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_x/model/post_model.dart';

class ApiService {
  static late Dio _dio;

  static init() async {
    _dio = Dio();
    getData();
  }

  static Future getData() async {
    String url = "https://jsonplaceholder.typicode.com/posts";
    try {
      Response response = await _dio.get(url);

      return postModelFromJson(jsonEncode(response.data));
    } catch (e) {
      print(e);
    }
  }
}
