import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/utils/size_utils.dart';



class CustomBackButton extends GetView{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(39),
      width: getHorizontalSize(39),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightblue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: (){Get.back();},
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: getHorizontalSize(7),),
            Icon(Icons.arrow_back_ios,size: 20,),
          ],
        ))
    );
  }
}