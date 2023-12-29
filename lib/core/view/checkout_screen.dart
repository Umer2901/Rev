import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:rev_delivery/components/custom_appbar.dart';
import 'package:rev_delivery/components/customTextfield.dart';
import 'package:rev_delivery/components/custom_textfield2.dart';
import 'package:rev_delivery/core/controllers/checkout_screen_controller.dart';

class CheckoutScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return GetBuilder(
        init: CheckoutScreenController(),
        builder: (controller) {
          return Scaffold(
              body: Padding(
            padding: getPadding(
              top: getVerticalSize(50),
              left: getHorizontalSize(20),
              right: getHorizontalSize(20),
            ),
            child: Column(
              children: [
                CustomAppBar(title: 'Enter Details', space1: 50, space2: 70),
                SizedBox(
                  height: getVerticalSize(25),
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.updatedIndex(0);
                        },
                        child: Container(
                          height: getVerticalSize(50),
                          width: ksize.width < 600 ? getHorizontalSize(100) : getHorizontalSize(85),
                          decoration: BoxDecoration(
                            color: AppColors.light,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: controller.currentIndex == 0
                                    ? AppColors.orange
                                    : Colors.transparent),
                            image: const DecorationImage(
                                image: AssetImage(AppImages.payment1)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.updatedIndex(1);
                        },
                        child: Container(
                          height: getVerticalSize(50),
                          width: ksize.width < 600 ? getHorizontalSize(100) : getHorizontalSize(85),
                          decoration: BoxDecoration(
                            color: AppColors.light,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: controller.currentIndex == 1
                                    ? AppColors.orange
                                    : Colors.transparent),
                            image: const DecorationImage(
                                image: AssetImage(AppImages.applepay)),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.updatedIndex(2);
                        },
                        child: Container(
                          height: getVerticalSize(50),
                          width: ksize.width < 600 ? getHorizontalSize(100) : getHorizontalSize(85),
                          decoration: BoxDecoration(
                            color: AppColors.light,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: controller.currentIndex == 2
                                    ? AppColors.orange
                                    : Colors.transparent),
                            image: const DecorationImage(
                                image: AssetImage(AppImages.visapay)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(25),
                ),
                controller.currentIndex == 0
                    ? Column(
                        children: [
                          CustomTextField2(
                              hinttext: '\$120',
                              title: 'Total Payment',
                              widthsize: 335.0),
                          SizedBox(
                            height: getVerticalSize(10),
                          ),
                          CustomTextField2(
                              hinttext: 'Mrh Raju',
                              title: 'Card Owner',
                              widthsize: 335.0),
                          SizedBox(
                            height: getVerticalSize(10),
                          ),
                          CustomTextField2(
                              hinttext: '5254 7634 8734 7690',
                              title: 'Card Number',
                              widthsize: 335.0),
                          SizedBox(
                            height: getVerticalSize(10),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextField2(
                                  hinttext: '24/24',
                                  title: 'Exp',
                                  widthsize: ksize.width < 600 ? 160.0 : 130.0),
                              CustomTextField2(
                                  hinttext: '7763',
                                  title: 'CVV',
                                  widthsize: ksize.width < 600 ? 160.0 : 130.0),
                            ],
                          ),
                          SizedBox(
                            height: getVerticalSize(25),
                          ),
                          Button(
                              buttonheight: 40.0,
                              buttonwidth: 234.0,
                              buttonRadius: 100.0,
                              buttoncolor: AppColors.primary,
                              textcolor: AppColors.white,
                              onTap: (){Get.toNamed(AppRoutes.confirm);},
                              bordercolor: Colors.transparent,
                              buttonText: 'Continue',),
                        ],
                      )
                    : SizedBox()
              ],
            ),
          ));
        });
  }
}
