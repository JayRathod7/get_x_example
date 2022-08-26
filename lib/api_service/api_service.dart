import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_x/model/post_model.dart';

class ApiService{
  static late Dio _dio;

  static init()async{
    _dio = Dio();
  }

  Future getData()async{
    String url = "https://jsonplaceholder.typicode.com/posts";
    Response response =await _dio.get(url);
    return postModelFromJson(jsonEncode(response.data));
    print(response.data);
  }
}