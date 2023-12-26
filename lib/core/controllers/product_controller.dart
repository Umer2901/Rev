import 'package:get/get.dart';



class ProductController extends GetxController{
 final currentIndex = 0.obs;
  updatedIndex(index) {
    currentIndex.value = index;
  }
}