import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';


class AppTextStyle {
  static const  TextStyle title = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w800,
    fontFamily: "Montserrat-Bold",
    fontStyle: FontStyle.normal,
    fontSize: 28.0,
  );

    static const  TextStyle buttonText = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontFamily: "Inter",
    fontStyle: FontStyle.normal,
    fontSize: 16.0,
  );
}
