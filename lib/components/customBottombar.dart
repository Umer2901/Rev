import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';

class CustomBottombar extends GetView {
  CustomBottombar({super.key, required this.revonTap, required this.profileonTap, required this.searchonTap});
  VoidCallback revonTap;
  VoidCallback searchonTap;
  VoidCallback profileonTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(96),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.white,
          border: Border(top: BorderSide(color: AppColors.lightblue))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: getHorizontalSize(20),
              right: getHorizontalSize(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: revonTap,
                  child: Column(
                    children: [
                      SizedBox(
                          height: 20,
                          width: 44,
                          child: Image.asset(
                            AppImages.logo1,
                            fit: BoxFit.fill,
                          )),
                      const Text(
                        'Browse',
                        style: AppTextStyle.fieldtitle,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: searchonTap,
                  child: const Column(
                    children: [
                      Icon(
                        Icons.search,
                        color: AppColors.black,
                      ),
                      Text(
                        'Search',
                        style: AppTextStyle.fieldtitle,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: profileonTap,
                  child: const Column(
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        color: AppColors.black,
                      ),
                      Text(
                        'profile',
                        style: AppTextStyle.fieldtitle,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
