import 'package:get/get.dart';
import 'package:get_x/api_service/api_service.dart';
import 'package:get_x/model/post_model.dart';

class DataController extends GetxController {
  Rx<PostModel> data = PostModel().obs;
  RxList<PostModel> dataList = <PostModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    List<PostModel> postModel = await ApiService.getData();
    if (postModel != null) {
      dataList.value = postModel as List<PostModel>;
    } else {
      print("something went wrong");
    }
  }
}
