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
        body: Obx(() => ListView.separated(
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: dataController.dataList.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),
                    margin: EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Box(
                            name: dataController.dataList.value[index].id
                                .toString()),
                        SizedBox(height: 6),
                        Box(
                            name: dataController.dataList.value[index].body
                                .toString()),                        SizedBox(height: 6),

                        Box(
                            name: dataController.dataList.value[index].userId
                                .toString()),                        SizedBox(height: 6),

                      ],
                    ));
              },
            )));
  }

  Widget Box({required String name}) => Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), border: Border.all()),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name,maxLines: 10,),
      ));
}
