import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:rev_delivery/components/customedivider.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class RegisterScreen extends GetView {

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: getPadding(
          top: getVerticalSize(166),
          left: getHorizontalSize(20),
          right: getHorizontalSize(20),
          bottom: getVerticalSize(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Welcome👋',
              style: AppTextStyle.heading,
            ),
            SizedBox(height: getVerticalSize(12)),
            const Text(
              'Enter your phone number',
              style: AppTextStyle.subheading,
            ),
            SizedBox(
              height: getVerticalSize(50),
            ),
            Form(
              key: _formkey,
              child: IntlPhoneField(
                validator: (value){
                  if(value == null){
                    return 'Please Enter Number';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.white,
                  contentPadding: EdgeInsets.only(
                    top: getVerticalSize(16),
                    bottom: getVerticalSize(16),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.primary),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.lightgray,
                    ),
                  ),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.lightgray,
                    ),
                  ),
                  counterText: '',
                ),
                enabled: true,
                initialCountryCode: '+92',
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomDivider(color: AppColors.primary),
                SizedBox(
                  width: getHorizontalSize(5),
                ),
                CustomDivider(color: AppColors.gray),
              ],
            ),
            SizedBox(
              height: getVerticalSize(10),
            ),
            Button(
              buttonheight: 56.0,
              buttonwidth: 353.0,
              buttonRadius: 10.0,
              buttoncolor: AppColors.primary,
              textcolor: AppColors.white,
              onTap: () {
                if(_formkey.currentState!.validate()){
                  Get.toNamed(AppRoutes.otp);
                }
              },
              bordercolor: Colors.transparent,
              buttonText: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}
