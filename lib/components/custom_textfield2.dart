import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';

class CustomTextField2 extends GetView {
  CustomTextField2 ({super.key,
      this.obscuretext = false,
      required this.hinttext,
      required this.title,
      this.validater,
      required this.widthsize,
      });
  String title;
  bool obscuretext;
  String hinttext;
  double widthsize;
  final String? Function(String?)? validater;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyle.subheading.copyWith(fontSize: 17),
        ),
        SizedBox(
          height: getVerticalSize(5),
        ),
        SizedBox(
          height: getVerticalSize(50),
          width: getHorizontalSize(widthsize),
          child: TextFormField(
            validator: validater,
            obscureText: obscuretext,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.light,
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.lightgray),
                  borderRadius: BorderRadius.circular(10)),
              hintText: hinttext,
              hintStyle: AppTextStyle.hinttext,
              contentPadding: getPadding(left: getHorizontalSize(15)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color(0xff949494),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
