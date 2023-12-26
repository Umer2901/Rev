import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:rev_delivery/components/customedivider.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: getPadding(top: getVerticalSize(147),bottom: getVerticalSize(25)),
      child: Column(
        children: [
          const Text(
            'Enter Code',
            style: AppTextStyle.heading,
          ),
          SizedBox(
            height: getVerticalSize(15),
          ),
          const Text(
            'We’ve sent an SMS with an activation',
            style: AppTextStyle.normalText,
          ),
          RichText(
            text: TextSpan(
              children: <InlineSpan>[
                const TextSpan(
                    text: 'code to your phone ',
                    style: AppTextStyle.normalText),
                TextSpan(
                    text: '+33 2 94 27 84 11',
                    style: AppTextStyle.normalText
                        .copyWith(color: AppColors.black))
              ],
            ),
          ),
          SizedBox(
            height: getVerticalSize(45),
          ),
          OtpTextField(
            fieldWidth: 60.0,
            //filled: false,
            borderRadius: BorderRadius.circular(15),
            showFieldAsBox: true,
            focusedBorderColor: AppColors.black,
            numberOfFields: 4,
          ),
          SizedBox(
            height: getVerticalSize(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Send code again',
                style: AppTextStyle.normalText.copyWith(color: AppColors.gray,fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: getHorizontalSize(5),
              ),
              Countdown(

                seconds: 20,
                build: (BuildContext context, double time) =>
                    Text(time.toString(),style: AppTextStyle.normalText,),
                interval: Duration(milliseconds: 100),
              )
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
    ));
  }
}
          
            
          

      
    
  
