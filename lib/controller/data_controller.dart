import 'package:get/get.dart';
import 'package:get_x/api_service/api_service.dart';
import 'package:get_x/model/post_model.dart';

class DataController extends GetxController {
  RxList<PostModel> dataList = <PostModel>[].obs;
  var isLoding = false.obs;
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    isLoding.value = true;
    List<PostModel> postModel = await ApiService.getData();
    if (postModel != null) {
      isLoding.value = false;
      dataList.value = postModel as List<PostModel>;
    } else {
      print("something went wrong");
    }
  }
}
