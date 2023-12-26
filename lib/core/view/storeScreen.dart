import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rev_delivery/app/appSvgs.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';

class StoreScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          Padding(
            padding: getPadding(right: getHorizontalSize(40),),
            child: SizedBox(
              height: ksize.height < 820 ? getVerticalSize(400) : getVerticalSize(465),
              width: getHorizontalSize(330),
              child: Image.asset(
                AppImages.items,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Container(
              //height: getVerticalSize(442),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(23),topRight: Radius.circular(23),),
              ),
              child: Padding(
                padding: getPadding(left: getHorizontalSize(16),top: getVerticalSize(21),right: getVerticalSize(16)),
                child: Column(
                  children: [
                    const Text('Welcome!',style: AppTextStyle.heading,),
                    Text('Enter your stores',style:AppTextStyle.subheading.copyWith(fontSize: 13)),
                    SizedBox(height: getVerticalSize(15),),
                    Padding(
                      padding: getPadding(left: getHorizontalSize(16),right: getHorizontalSize(16)),
                      child: InkWell(
                        onTap: (){Get.toNamed(AppRoutes.products);},
                        child: Row(children: [
                          SizedBox(
                            height: 16,
                            width: 44,
                            child: Image.asset(AppImages.logo1,fit: BoxFit.fill,)),
                        
                        SizedBox(width: getHorizontalSize(5),),
                        Text('UCLA',style: AppTextStyle.subheading.copyWith(fontSize: 18),),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios,size: 15.0)
                        ],),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(5),),
                    const Divider(color: AppColors.lightblue,),
                    SizedBox(height: getVerticalSize(10),),
                    Padding(
                      padding: getPadding(left: getHorizontalSize(16),right: getHorizontalSize(16)),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.products);
                        },
                        child: Row(children: [
                          SizedBox(
                            height: 16,
                            width: 44,
                            child: Image.asset(AppImages.logo1,fit: BoxFit.fill,)),
                        
                        SizedBox(width: getHorizontalSize(5),),
                        Text('USC',style: AppTextStyle.subheading.copyWith(fontSize: 18),),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios,size: 15.0)
                        ],),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(5),),
                    const Divider(color: AppColors.lightblue,),
                    SizedBox(height: getVerticalSize(10),),
                    Padding(
                      padding: getPadding(left: getHorizontalSize(16),right: getHorizontalSize(16)),
                      child: InkWell(
                        onTap: (){Get.toNamed(AppRoutes.products);},
                        child: Row(children: [
                          SizedBox(
                            height: 16,
                            width: 44,
                            child: Image.asset(AppImages.logo1,fit: BoxFit.fill,)),
                        
                        SizedBox(width: getHorizontalSize(5),),
                        Text('UCSB',style: AppTextStyle.subheading.copyWith(fontSize: 18),),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios,size: 15.0)
                        ],),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(5),),
                    const Divider(color: AppColors.lightblue,),
                    SizedBox(height: getVerticalSize(10),),
                    Padding(
                      padding: getPadding(left: getHorizontalSize(16),right: getHorizontalSize(16)),
                      child: InkWell(
                        onTap: (){Get.toNamed(AppRoutes.products);},
                        child: Row(children: [
                          SizedBox(
                            height: 16,
                            width: 44,
                            child: Image.asset(AppImages.logo1,fit: BoxFit.fill,)),
                        
                        SizedBox(width: getHorizontalSize(5),),
                        Text('ASU',style: AppTextStyle.subheading.copyWith(fontSize: 18),),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios,size: 15.0)
                        ],),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(5),),
                    const Divider(color: AppColors.lightblue,),
                    SizedBox(height: getVerticalSize(10),),
                    Padding(
                      padding: getPadding(left: getHorizontalSize(16),right: getHorizontalSize(16)),
                      child: InkWell(
                        onTap:(){Get.toNamed(AppRoutes.products);},
                        child: Row(children: [
                          SizedBox(
                            height: 16,
                            width: 44,
                            child: Image.asset(AppImages.logo1,fit: BoxFit.fill,)),
                        
                        SizedBox(width: getHorizontalSize(5),),
                        Text('UT AUSTIN',style: AppTextStyle.subheading.copyWith(fontSize: 18),),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios,size: 15.0)
                        ],),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(5),),
                    const Divider(color: AppColors.lightblue,),
                  ],
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
