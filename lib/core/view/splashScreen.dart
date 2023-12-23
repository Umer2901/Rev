import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:rev_delivery/core/controllers/splashController.dart';



class SplashScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return GetBuilder(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.primary,
          body: Padding(
            padding: EdgeInsets.only(
                bottom: ksize.height * 0.08, top: ksize.height * 0.46),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: ksize.height*0.06,
                    width: ksize.width*0.3,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: AppColors.white,
                    ),
                    child: Image.asset(
                      AppImages.logo,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Spacer(),
                  const SpinKitCircle(
                    color: AppColors.white,
                    size: 60.0,
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
