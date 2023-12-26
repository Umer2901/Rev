import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:rev_delivery/components/custom_appbar.dart';
import 'package:rev_delivery/components/customTextfield.dart';
import 'package:rev_delivery/components/customBackbutton.dart';

class ContactUs extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: getPadding(
              top: getVerticalSize(50),
              left: getHorizontalSize(21),
              right: getHorizontalSize(21)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(title: 'Contact Us', space1: 45.0, space2: 60.0),
              SizedBox(height: getVerticalSize(50)),
              CustomTextField(hinttext: 'Name', title: 'Name'),
              SizedBox(height: getVerticalSize(10)),
              CustomTextField(hinttext: 'Email', title: 'Email Address'),
              SizedBox(
                height: getVerticalSize(10),
              ),
              CustomTextField(hinttext: 'Phone Number', title: 'Phone Number'),
              SizedBox(
                height: getVerticalSize(10),
              ),
              const Text(
                'Message',
                style: AppTextStyle.fieldtitle,
              ),
              SizedBox(
                height: getVerticalSize(5),
              ),
              TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Your Message....',
                    hintStyle: AppTextStyle.hinttext,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: AppColors.lightgray)),
                  )),
              SizedBox(
                height: getVerticalSize(40),
              ),
              Button(
                buttonheight: 52.0,
                buttonwidth: 327.0,
                buttonRadius: 8.0,
                buttoncolor: AppColors.primary,
                textcolor: AppColors.white,
                onTap: () {},
                bordercolor: Colors.transparent,
                buttonText: 'Save',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
