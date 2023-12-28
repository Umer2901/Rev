import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/constant.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:rev_delivery/components/custom_appbar.dart';
import 'package:rev_delivery/components/customTextfield.dart';
import 'package:rev_delivery/core/controllers/account_detailscreen_controller.dart';

class AccountDetailScreen extends GetView {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: AccountDetailScreenController(),
        builder: (controller) {
          return Scaffold(
              body: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                top: getVerticalSize(51),
                left: getHorizontalSize(20),
                right: getHorizontalSize(20),
              ),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(title: 'Profile', space1: 73.0, space2: 122.0),
                    SizedBox(height: getVerticalSize(25)),
                    Obx(
                      () => Center(
                        child: InkWell(
                          onTap: () {
                            controller.imagepicker();
                          },
                          child: Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage: controller.imagepath.isNotEmpty
                                    ? FileImage(
                                        File(controller.imagepath.toString()))
                                    : null,
                                radius: 50,
                              ),
                              const Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundColor: AppColors.white,
                                    radius: 14,
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: AppColors.primary,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(20)),
                    const Text(
                      'Personal Details',
                      style: AppTextStyle.subheading,
                    ),
                    SizedBox(
                      height: getVerticalSize(15),
                    ),
                    CustomTextField(
                      hinttext: 'Name',
                      title: 'Name',
                      validater: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    CustomTextField(
                      hinttext: 'Email',
                      title: 'EmailAddress',
                      validater: (value) {
                        if (value == null || value.isEmpty || !value.isEmail) {
                          return 'Please Enter Email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    CustomTextField(
                        hinttext: '+92311....',
                        title: 'Phone Number',
                        validater: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !value.isNumericOnly) {
                            return 'Please Enter PhoneNumber';
                          }
                          return null;
                        }),
                    SizedBox(
                      height: getVerticalSize(25),
                    ),
                    const Divider(
                      color: AppColors.lightgray,
                    ),
                    SizedBox(
                      height: getVerticalSize(15),
                    ),
                    const Text(
                      'Address Details',
                      style: AppTextStyle.subheading,
                    ),
                    SizedBox(
                      height: getVerticalSize(10),
                    ),
                    CustomTextField(
                      hinttext: '3548',
                      title: 'ZipCode',
                      validater: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.isNumericOnly) {
                          return 'Please Enter Zipcode';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    CustomTextField(
                        hinttext: 'Street Address',
                        title: 'Street',
                        validater: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Street Address';
                          }
                          return null;
                        }),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    const Text(
                      'Store',
                      style: AppTextStyle.fieldtitle,
                    ),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    DropdownButtonFormField(
                      validator: (value) {
                        if (value == null || value.isBlank!) {
                          return 'Please Select store';
                        }
                        return null;
                      },
                      items: storeList.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newvalue) {
                        controller.onChange(newvalue);
                      },
                      focusColor: AppColors.primary,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      decoration: InputDecoration(
                        hintText: 'DCL',
                        hintStyle: AppTextStyle.hinttext,
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: AppColors.lightgray,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.blue),
                        ),
                        contentPadding: getPadding(
                          top: getVerticalSize(13),
                          bottom: getVerticalSize(13),
                          left: getHorizontalSize(22),
                          right: getHorizontalSize(17),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    CustomTextField(
                        hinttext: 'N1 2LL,',
                        title: 'Apartment',
                        validater: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Apartment';
                          }
                          return null;
                        }),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    CustomTextField(
                        hinttext: 'Leono',
                        title: 'Neibourhood',
                        validater: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Neibourhood';
                          }
                        }),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    CustomTextField(
                      hinttext: 'Name',
                      title: 'Name',
                      validater: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: getVerticalSize(15),
                    ),
                    Button(
                      buttonheight: 52.0,
                      buttonwidth: 327.0,
                      buttonRadius: 8.0,
                      buttoncolor: AppColors.primary,
                      textcolor: AppColors.white,
                      onTap: () {
                        if (_formkey.currentState!.validate()) {
                          Get.showSnackbar(
                            const GetSnackBar(
                            backgroundColor: AppColors.primary,
                            duration: Duration(milliseconds: 1000),
                            snackPosition: SnackPosition.TOP,
                            message: 'Data is Saved',
                          ));
                        }
                      },
                      bordercolor: Colors.transparent,
                      buttonText: 'Save',
                    ),
                    SizedBox(
                      height: getVerticalSize(25),
                    ),
                  ],
                ),
              ),
            ),
          ));
        });
  }
}
