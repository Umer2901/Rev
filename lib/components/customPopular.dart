import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';

class Popular extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(150),
      width: getHorizontalSize(150),
      decoration: BoxDecoration(
        
          borderRadius: BorderRadius.circular(7),
          border: const Border(
              top: BorderSide(color: AppColors.primary, width: 17.0),
              left: BorderSide(color: AppColors.primary, width: 3.0),
              right: BorderSide(color: AppColors.primary, width: 3.0),
              )),
      child: Column(children: [
        Image.asset(AppImages.popular),
        Expanded(
          child: Container(
            //height: getVerticalSize(20),
            width: double.infinity,
            decoration: const BoxDecoration(color: AppColors.primary),
            child: Padding(
              padding: getPadding(left: getHorizontalSize(5)),
              child: Text('Popular',style: AppTextStyle.subheading.copyWith(fontSize: 14),),
            ),
          ),
        )
      ]),
    );
  }
}
