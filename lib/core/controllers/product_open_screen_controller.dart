import 'package:get/get.dart';



class ProductOpenScreenController  extends GetxController{
  
  RxInt x = 1.obs;

  void increment(){
    x.value++;
  }

  void decrement(){
    x.value--;
  }

  
}