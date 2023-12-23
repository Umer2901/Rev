import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';


class Button extends GetView {
  Button({
    super.key,
    required this.buttonheight,
    required this.buttonwidth,
    required this.buttonRadius,
    required this.buttoncolor,
    required this.textcolor,
    required this.onTap,
    required this.bordercolor,
    required this.buttonText,
  });
  VoidCallback onTap;
  var buttonheight;
  var buttonwidth;
  var buttonRadius;
  Color buttoncolor;
  String buttonText;
  Color textcolor;
  Color bordercolor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: getVerticalSize(buttonheight),
        width: getHorizontalSize(buttonwidth),
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(buttonRadius),
          border: Border.all(color: bordercolor),
        ),
        child: Center(
            child: Text(buttonText,
                style: AppTextStyle.buttonText.copyWith(color: textcolor))),
      ),
    );
  }
}
