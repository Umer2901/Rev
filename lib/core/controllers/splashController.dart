import 'dart:async';
import 'package:get/get.dart';
import 'package:rev_delivery/routes/appRoutes.dart';






class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 7), () { 
      Get.offNamed(AppRoutes.welcome);
    });
  }
}

