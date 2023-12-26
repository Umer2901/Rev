import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/constant.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customproducts.dart';
import 'package:rev_delivery/components/customBottombar.dart';

class ProductsScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ,
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: getPadding(
                top: getVerticalSize(47),
                left: getHorizontalSize(16),
                right: getHorizontalSize(16)),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'All Products',
                      style: AppTextStyle.heading,
                    ),
                    const Spacer(),
                    Container(
                      height: getVerticalSize(32),
                      width: getHorizontalSize(68),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.shopping_cart,
                              color: AppColors.white,
                            ),
                            Text('Cart',
                                style: AppTextStyle.subheading
                                    .copyWith(color: Colors.white, fontSize: 14)),
                          ]),
                    )
                  ],
                ),
                SizedBox(
                  height: getVerticalSize(15),
                ),
                Row(
                  children: [
                    Container(
                      height: getVerticalSize(40),
                      width: getHorizontalSize(122),
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Category',
                              style: AppTextStyle.subheading
                                  .copyWith(color: AppColors.white, fontSize: 14),
                            ),
                            SizedBox(
                              width: getHorizontalSize(5),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.white,
                              size: 20,
                            ),
                          ]),
                    ),
                    const Spacer(),
                    const Text(
                      '374 Products',
                      style: AppTextStyle.subheading,
                    ),
                  ],
                ),
                SizedBox(
                  height: getVerticalSize(20),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15.0,
                              crossAxisSpacing: 12.0,
                              mainAxisExtent: 220.0,
                            ),
                            itemCount: productList.length,
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return CustomProduct(
                                onTap: productList[index].onTap,
                                image: productList[index].image,
                                name: productList[index].name,
                                price: productList[index].price,
                              );
                            }),
                        SizedBox(height: getVerticalSize(15)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: Obx(
            ()=>  CustomBottombar(
              profileiconcolor: ,
              profiletextcolor: ,
              revtextcolor: ,
              searchiconcolor: ,
              searchtextcolor: ,
              revonTap: () {
              Get.toNamed(AppRoutes.products);
              controller
            }, profileonTap: () {
              Get.toNamed(AppRoutes.profile);
            }, searchonTap: () {
              Get.toNamed(AppRoutes.search);
            }),
          ),
        );
      }
    );
  }
}
