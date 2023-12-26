import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:rev_delivery/components/customedivider.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class OtpScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: getPadding(
          top: getVerticalSize(147),
          //left: getHorizontalSize(20),
          //right: getHorizontalSize(20),
          bottom: getVerticalSize(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Enter Code', style: AppTextStyle.heading),
            SizedBox(height: getVerticalSize(15)),
            const Text(
              'We’ve sent an SMS with an activation',
              style: AppTextStyle.normalText,
            ),
            RichText(
              text: TextSpan(
                children: <InlineSpan>[
                  const TextSpan(
                      text: 'Code to your phone',
                      style: AppTextStyle.normalText),
                  TextSpan(
                    text: '+33 2 94 27 84 11',
                    style: AppTextStyle.normalText
                        .copyWith(color: AppColors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getVerticalSize(35),
            ),

            OTPTextField(
              length: 5,
              keyboardType: TextInputType.number,
              spaceBetween: 7.0,
              fieldWidth: 58,
              fieldStyle: FieldStyle.box,
              obscureText: false,
              otpFieldStyle: OtpFieldStyle(
                focusBorderColor: AppColors.black,
              ),
              style: AppTextStyle.normalText.copyWith(color: AppColors.white),
            ),

            SizedBox(
              height: getVerticalSize(15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Send Code again',
                  style: AppTextStyle.normalText
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: getHorizontalSize(8)),
                const Text(
                  '00:20',
                  style: AppTextStyle.normalText,
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomDivider(color: AppColors.gray, width: 116.0),
                SizedBox(width: getHorizontalSize(5)),
                CustomDivider(color: AppColors.primary, width: 116.0),
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
                  Get.toNamed(AppRoutes.login);
                },
                bordercolor: Colors.transparent,
                buttonText: 'Continue'),
          ],
        ),
      ),
    );
  }
}
