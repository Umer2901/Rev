import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';



class CustomProduct extends GetView{
  CustomProduct({super.key, required this.onTap, required this.image,required this.name, required this.price});
  VoidCallback onTap;
  String image;
  String name;
  String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(240),
      width: getHorizontalSize(169),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightgray),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: getPadding(left: getHorizontalSize(8),right: getHorizontalSize(8),top: getVerticalSize(5)),
        child: Column(
          children: [
            InkWell(
              onTap: onTap,
              child: Container(
                height: getVerticalSize(150),
                width: getHorizontalSize(130),
                decoration:  BoxDecoration(
                  image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill),
                ),
              ),
            ),
            Text(name,style: AppTextStyle.subheading.copyWith(fontSize: 12),),
            SizedBox(height: getVerticalSize(5),),
            Row(
              children: [
                Text(price,style: AppTextStyle.subheading.copyWith(fontWeight: FontWeight.w400,fontSize: 12),),
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