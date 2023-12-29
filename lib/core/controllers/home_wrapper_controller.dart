import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';

class HomeWrapController extends GetxController {
  PageController pageController = PageController(initialPage: 0);
  RxInt currentIndex = 0.obs;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  void onReady() {
    super.onReady();
    Get.dialog(
      
      Center(
        child: Material(
          child: Padding(
            padding: getPadding(left: getHorizontalSize(16),right: getHorizontalSize(16)),
            child: Container(
              height: getVerticalSize(351),
              width: getHorizontalSize(372),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Padding(
                padding: getPadding(top: getVerticalSize(44)),
                child: Column(
                children: [
                  SizedBox(
                    height: getVerticalSize(91),
                    width: getHorizontalSize(91),
                    child: Image.asset(
                      AppImages.eighteen,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    'Age',
                    style: AppTextStyle.subheading
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                  Text(
                    'Are you 18+',
                    style: AppTextStyle.smallText.copyWith(fontSize: 12),
                  ),
                  SizedBox(height: getVerticalSize(15)),
                  Button(
                      buttonheight: 54.0,
                      buttonwidth: 340.0,
                      buttonRadius: 8.0,
                      buttoncolor: AppColors.primary,
                      textcolor: AppColors.white,
                      onTap: (){Get.back();},
                      bordercolor: Colors.transparent,
                      buttonText: 'Yes'),
                      SizedBox(height: getVerticalSize(5),),
                      Button(
                      buttonheight: 54.0,
                      buttonwidth: 340.0,
                      buttonRadius: 8.0,
                      buttoncolor: AppColors.white,
                      textcolor: AppColors.warning,
                      onTap: (){Get.offAllNamed(AppRoutes.splash);},
                      bordercolor: AppColors.warning,
                      buttonText: 'No'),
                ],
                    ),
              ),
            ),
          ),
        ),
      ));
  }
}
