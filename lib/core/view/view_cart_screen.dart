import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/custom_appbar.dart';

class CartView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: getPadding(
          top: getVerticalSize(42),
          left: getHorizontalSize(20),
          right: getHorizontalSize(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(title: 'Cart', space1: 90.0, space2: 122.0),
            SizedBox(height: getVerticalSize(20)),
            Container(
              height: getVerticalSize(93),
              width: getHorizontalSize(335),
              decoration: BoxDecoration(
                color: AppColors.light,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: getPadding(
                    left: getHorizontalSize(25), right: getHorizontalSize(15)),
                child: Row(
                  children: [
                    Container(
                      height: getVerticalSize(50),
                      width: getHorizontalSize(50),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.nerds),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nerds Gummy Clusters',
                          style: AppTextStyle.subheading.copyWith(fontSize: 13),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: AppColors.sky, width: 3),
                                ),
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.minimize_sharp,
                                      color: AppColors.sky,
                                      size: 18,
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: getHorizontalSize(5),
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: AppColors.lightblue, width: 3),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('1', style: AppTextStyle.normalText)
                                  ],
                                )),
                            SizedBox(
                              width: getHorizontalSize(5),
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: AppColors.black, width: 3),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: AppColors.black,
                                      size: 22,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$3.37',
                          style: AppTextStyle.subheading.copyWith(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: getVerticalSize(4)),
                        Text(
                          'Remove',
                          style: AppTextStyle.normalText.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getVerticalSize(10),
            ),
            Container(
              height: getVerticalSize(93),
              width: getHorizontalSize(335),
              decoration: BoxDecoration(
                color: AppColors.light,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: getPadding(
                    left: getHorizontalSize(25), right: getHorizontalSize(15)),
                child: Row(
                  children: [
                    Container(
                      height: getVerticalSize(50),
                      width: getHorizontalSize(50),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.nerds),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nerds Gummy Clusters',
                          style: AppTextStyle.subheading.copyWith(fontSize: 13),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: AppColors.sky, width: 3),
                                ),
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.minimize_sharp,
                                      color: AppColors.sky,
                                      size: 18,
                                    )
                                  ],
                                )),
                            SizedBox(
                              width: getHorizontalSize(5),
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: AppColors.lightblue, width: 3),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('1', style: AppTextStyle.normalText)
                                  ],
                                )),
                            SizedBox(
                              width: getHorizontalSize(5),
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: AppColors.black, width: 3),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: AppColors.black,
                                      size: 22,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$3.37',
                          style: AppTextStyle.subheading.copyWith(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: getVerticalSize(4)),
                        Text(
                          'Remove',
                          style: AppTextStyle.normalText.copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: getVerticalSize(10),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.deliveryAddress);
              },
              child: const Row(
                children: [
                  Text(
                    'Delivery Address',
                    style: AppTextStyle.subheading,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getVerticalSize(10),
            ),
            Row(
              children: [
                Container(
                  height: getVerticalSize(50),
                  width: getHorizontalSize(50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(AppImages.map), fit: BoxFit.fill),
                  ),
                ),
                SizedBox(width: getHorizontalSize(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chhatak, Sunamgonj 12/8AB',
                      style: AppTextStyle.subheading
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    const Text('Sylhet', style: AppTextStyle.normalText),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12.5)),
                  child: const Icon(
                    Icons.check,
                    color: AppColors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: getVerticalSize(25),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.checkout);
              },
              child: const Row(
                children: [
                  Text(
                    'Payment Method',
                    style: AppTextStyle.subheading,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getVerticalSize(15),
            ),
            Row(
              children: [
                Container(
                  height: getVerticalSize(50),
                  width: getHorizontalSize(50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(AppImages.map), fit: BoxFit.fill),
                  ),
                ),
                SizedBox(width: getHorizontalSize(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vissa Classic',
                      style: AppTextStyle.subheading
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    SizedBox(
                      height: getVerticalSize(5),
                    ),
                    const Text('***7689', style: AppTextStyle.normalText),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12.5)),
                  child: const Icon(
                    Icons.check,
                    color: AppColors.white,
                  ),
                )
              ],
            ),
            SizedBox(
              height: getVerticalSize(20),
            ),
            const Text('Order Info', style: AppTextStyle.subheading),
            SizedBox(height: getVerticalSize(15)),
            Row(
              children: [
                const Text(
                  'SubTotal',
                  style: AppTextStyle.normalText,
                ),
                const Spacer(),
                Text('\$110',
                    style: AppTextStyle.subheading.copyWith(fontSize: 15)),
              ],
            ),
            SizedBox(height: getVerticalSize(8)),
            Row(
              children: [
                const Text(
                  'ShippingCost',
                  style: AppTextStyle.normalText,
                ),
                const Spacer(),
                Text('\$10',
                    style: AppTextStyle.subheading.copyWith(fontSize: 15)),
              ],
            ),
            SizedBox(height: getVerticalSize(8)),
            Row(
              children: [
                const Text(
                  'Total',
                  style: AppTextStyle.normalText,
                ),
                const Spacer(),
                Text('\$120',
                    style: AppTextStyle.subheading.copyWith(fontSize: 15)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
