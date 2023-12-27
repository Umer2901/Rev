import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:rev_delivery/components/customTextfield.dart';
import 'package:rev_delivery/components/customBackbutton.dart';

class DeliveryAddress extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: getPadding(top: getVerticalSize(50),left: getHorizontalSize(16),right: getHorizontalSize(16)),
        child: Column(
          
          children: [
             Row(
              children: [
                CustomBackButton(),
              ],
            ),
            SizedBox(
              height: getVerticalSize(50),
            ),
             Text('Lets set up your Detail', style: AppTextStyle.heading.copyWith(fontSize: 24)),
            SizedBox(
              height: getVerticalSize(10),
            ),
             const Text('Provide information about your\n           Delivery Address',
                style: AppTextStyle.hinttext),
            SizedBox(height: getVerticalSize(30)),
            CustomTextField(hinttext: 'Abc Restaurant', title: 'Name'),
            SizedBox(height: getVerticalSize(10)),
             const Row(
               children: [
                 Text(
                  'Address',
                  style: AppTextStyle.fieldtitle,
                             ),
               ],
             ),
            SizedBox(
              height: getVerticalSize(5),
            ),
            TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Address...',
                  hintStyle: AppTextStyle.hinttext,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: AppColors.lightgray)),
                )),
            SizedBox(height: getVerticalSize(50)),
            Button(
                buttonheight: 56.0,
                buttonwidth: 353.0,
                buttonRadius: 10.0,
                buttoncolor: AppColors.primary,
                textcolor: AppColors.white,
                onTap: (){},
                bordercolor: Colors.transparent,
                buttonText: 'Save',),
          ],
        ),
      ),
    );
  }
}
