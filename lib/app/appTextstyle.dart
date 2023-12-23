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

  static const  TextStyle heading = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w800,
    fontFamily: "Montserrat-Bold",
    fontStyle: FontStyle.normal,
    fontSize: 30.0,
  );

    static const  TextStyle subheading = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w600,
    fontFamily: "Montserrat",
    fontStyle: FontStyle.normal,
    fontSize: 20.0,
  );
}
