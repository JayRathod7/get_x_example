import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get_x/controller/data_controller.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("getX Example"),
        ),
        body: Obx(() => dataController.isLoding.value
            ? Container(
                child: Center(child: CircularProgressIndicator()),
              )
            : ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: dataController.dataList.length,
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 10, right: 10),
                      margin: EdgeInsets.only(
                          top: 10, bottom: 10, left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(dataController.dataList.value[index].id
                              .toString()),
                          SizedBox(height: 6),
                          Text(dataController.dataList.value[index].userId
                              .toString()),
                          SizedBox(height: 6),
                          Text(dataController.dataList.value[index].title
                              .toString()),
                          SizedBox(height: 6),
                        ],
                      ));
                },
              )));
  }
}
