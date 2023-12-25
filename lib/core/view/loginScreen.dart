import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:rev_delivery/components/customedivider.dart';
import 'package:rev_delivery/components/customTextfield.dart';

class LoginScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: getPadding(
        top: getVerticalSize(120),
        left: getHorizontalSize(18),
        right: getHorizontalSize(18),
        bottom: getVerticalSize(25),
      ),
      child: Column(
        children: [
          const Text(
            'Welcome👋',
            style: AppTextStyle.heading,
          ),
          SizedBox(
            height: getVerticalSize(15),
          ),
          const Text('Please enter your name', style: AppTextStyle.subheading),
          const Text(
            'and email address',
            style: AppTextStyle.subheading,
          ),
          SizedBox(
            height: getVerticalSize(15),
          ),
          CustomTextField(hinttext: 'Name', title: 'Name'),
          SizedBox(
            height: getVerticalSize(10),
          ),
          CustomTextField(hinttext: 'Email', title: 'Email Address'),
          const Spacer(),
          Row(
            children: [
              CustomDivider(color: AppColors.gray, width: 110.0),
              SizedBox(width: getHorizontalSize(5)),
              CustomDivider(color: AppColors.gray, width: 110.0),
              SizedBox(width: getHorizontalSize(5)),
              CustomDivider(color: AppColors.primary, width: 110.0),
            ],
          ),
          SizedBox(height: getVerticalSize(10)),
          Button(
            buttonheight: 56.0,
            buttonwidth: 353.0,
            buttonRadius: 10.0,
            buttoncolor: AppColors.primary,
            textcolor: AppColors.white,
            onTap: () {
              Get.toNamed(AppRoutes.store);
            },
            bordercolor: Colors.transparent,
            buttonText: 'Continue',
          ),
        ],
      ),
    ));
  }
}
