import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/api_service/api_service.dart';
import 'package:get_x/screen/first_screen.dart';
import 'package:get_x/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    init();
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  FirstScreen(),
    );
  }
}
void init()async{
  await ApiService.init;
}
