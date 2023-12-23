import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class WelcomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: getPadding(left: getHorizontalSize(21),right: getHorizontalSize(21),top: getVerticalSize(53)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: getPadding(right: getHorizontalSize(40)),
            child: Container(
                height: getVerticalSize(478),
                width: getHorizontalSize(330),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AppImages.items), fit: BoxFit.fill),
                )),
          ),
          SizedBox(height: getVerticalSize(5)),
          const Text('Just REV it!', style: AppTextStyle.title),
          SizedBox(height: getVerticalSize(30)),
          Button(
              buttonheight: 54.0,
              buttonwidth: 351.0,
              buttonRadius: 10.0,
              buttonText: 'Login',
              bordercolor: Colors.transparent,
              buttoncolor: AppColors.white,
              textcolor: AppColors.primary,
              onTap: () {}),
          SizedBox(height: getVerticalSize(20),),
           Button(
              buttonheight: 54.0,
              buttonwidth: 351.0,
              buttonRadius: 10.0,
              buttonText: 'Sign Up',
              bordercolor: AppColors.white,
              buttoncolor: Colors.transparent,
              textcolor: AppColors.white,
              onTap: () {
                Get.toNamed(AppRoutes.register);
              }),
        ]),
      ),
        
    );
  }
}
