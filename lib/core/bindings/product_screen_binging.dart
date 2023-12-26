import 'package:get/get.dart';
import '../controllers/product_controller.dart';




class ProductScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
