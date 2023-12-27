import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import '../bindings/profile_screen_binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/custom_appbar.dart';
import 'package:rev_delivery/components/customBottombar.dart';
import 'package:rev_delivery/components/customBackbutton.dart';
import 'package:rev_delivery/core/controllers/profile_screen_controller.dart';


class ProfileScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return GetBuilder(
      init: ProfileController(),
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: getPadding(
                left: getHorizontalSize(21),
                right: getHorizontalSize(21),
                top: ksize.height < 820 ? getVerticalSize(60) : getVerticalSize(71)),
            child: Column(
              children: [
                CustomAppBar(title: 'Profile',space1: 73.0,space2: 122.0),
                SizedBox(height: getVerticalSize(15),),
                CircleAvatar(
                  maxRadius:50.0,
                  child: Image.asset(AppImages.profile),),
                SizedBox(height: getVerticalSize(20),),
                Container(
                  height: getVerticalSize(48),
                  width: getHorizontalSize(310),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColors.light,
                  ),
                  child: InkWell(
                    onTap: (){Get.toNamed(AppRoutes.accountDetail);},
                    child: Padding(
                      padding: getPadding(left: getHorizontalSize(12),right: getHorizontalSize(16),),
                      child: const Row(children: [
                         Text('Account Detail',style: AppTextStyle.profileText,),
                         Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 17),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: ksize.height < 820 ? getVerticalSize(8) : getVerticalSize(12)),
                Container(
                  height: getVerticalSize(48),
                  width: getHorizontalSize(310),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColors.light,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: getPadding(left: getHorizontalSize(12),right: getHorizontalSize(16),),
                      child: const Row(children: [
                         Text('Payment Detail',style: AppTextStyle.profileText,),
                         Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 17),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: ksize.height < 820 ? getVerticalSize(8) : getVerticalSize(12)),
                Container(
                  height: getVerticalSize(48),
                  width: getHorizontalSize(310),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColors.light,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: getPadding(left: getHorizontalSize(12),right: getHorizontalSize(16),),
                      child: const Row(children: [
                         Text('Order Detail',style: AppTextStyle.profileText,),
                         Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 17),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: ksize.height < 820 ? getVerticalSize(8) : getVerticalSize(12)),
                Container(
                  height: getVerticalSize(48),
                  width: getHorizontalSize(310),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColors.light,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: getPadding(left: getHorizontalSize(12),right: getHorizontalSize(16),),
                      child: const Row(children: [
                         Text('Store Information',style: AppTextStyle.profileText,),
                         Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 17),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: ksize.height < 820 ? getVerticalSize(8) : getVerticalSize(12)),
                Container(
                  height: getVerticalSize(48),
                  width: getHorizontalSize(310),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColors.light,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: getPadding(left: getHorizontalSize(12),right: getHorizontalSize(16),),
                      child: const Row(children: [
                         Text('Terms of Services',style: AppTextStyle.profileText,),
                         Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 17),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: ksize.height < 820 ? getVerticalSize(8) : getVerticalSize(12)),
                Container(
                  height: getVerticalSize(48),
                  width: getHorizontalSize(310),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColors.light,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: getPadding(left: getHorizontalSize(12),right: getHorizontalSize(16),),
                      child: const Row(children: [
                         Text('Privacy Policy',style: AppTextStyle.profileText,),
                         Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 17),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: ksize.height < 820 ? getVerticalSize(8) : getVerticalSize(12)),
                Container(
                  height: getVerticalSize(48),
                  width: getHorizontalSize(310),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColors.light,
                  ),
                  child: InkWell(
                    onTap: (){Get.toNamed(AppRoutes.contactus);},
                    child: Padding(
                      padding: getPadding(left: getHorizontalSize(12),right: getHorizontalSize(16),),
                      child: const Row(children: [
                         Text('Contact Us',style: AppTextStyle.profileText,),
                         Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 17),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: ksize.height < 820 ? getVerticalSize(8) : getVerticalSize(12)),
                Container(
                  height: getVerticalSize(48),
                  width: getHorizontalSize(310),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: AppColors.light,
                  ),
                  child: InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: getPadding(left: getHorizontalSize(12),right: getHorizontalSize(16),),
                      child: const Row(children: [
                         Text('Logout',style: AppTextStyle.profileText,),
                         Spacer(),
                        Icon(Icons.arrow_forward_ios,size: 17),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar:  Obx(
                ()=>  CustomBottombar(
                  profileiconcolor: controller.currentIndex == 1 ? AppColors.primary :AppColors.black,
                  profiletextcolor: controller.currentIndex == 1 ? AppColors.primary :AppColors.black,
                  revtextcolor: controller.currentIndex == 0 ? AppColors.primary :AppColors.black,
                  searchiconcolor: controller.currentIndex == 2 ? AppColors.primary :AppColors.black,
                  searchtextcolor: controller.currentIndex == 2 ? AppColors.primary :AppColors.black,
                  revonTap: () {
                  Get.toNamed(AppRoutes.products);
                  // controller.updatedIndex(0);
                }, profileonTap: () {
                  Get.toNamed(AppRoutes.profile);
                  // controller.updatedIndex(1);
                }, searchonTap: () {
                  Get.toNamed(AppRoutes.search);
                  // controller.updatedIndex(2);
                }),
        ));
      }
    );
  }
}
