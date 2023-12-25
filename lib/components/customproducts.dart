import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';



class CustomProduct extends GetView{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(220),
      width: getHorizontalSize(169),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightgray),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: getPadding(left: getHorizontalSize(8),right: getHorizontalSize(8),top: getVerticalSize(5)),
        child: Column(
          children: [
            Container(
              height: getVerticalSize(150),
              width: getHorizontalSize(130),
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.nerds),fit: BoxFit.fill),
              ),
            ),
            Text('Nerds Gummy Clusters',style: AppTextStyle.subheading.copyWith(fontSize: 12),),
            SizedBox(height: getVerticalSize(5),),
            Row(
              children: [
                Text('\$3.38',style: AppTextStyle.subheading.copyWith(fontWeight: FontWeight.w400,fontSize: 12),),
                const Spacer(),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Center(child: Icon(Icons.add,color: AppColors.white,)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}