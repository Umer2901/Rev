import 'package:get/get.dart';
import 'package:rev_delivery/core/controllers/search_screen_controller.dart';





class SearchScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchScreenController());
  }
}