import 'package:get/get.dart';



class CheckoutScreenController extends GetxController{
 final currentIndex = 0.obs;
  updatedIndex(index) {
    currentIndex.value = index;
  }
}

