import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';

class AddToCart extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
                padding: getPadding(
            top: getVerticalSize(25),
            left: getHorizontalSize(12),
            right: getHorizontalSize(12)),
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Cart',
                  style: AppTextStyle.heading,
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.cancel,
                      color: AppColors.primary,
                    )),
              ],
            ),
            SizedBox(
              height: getVerticalSize(30),
            ),
            Row(
              children: [
                Container(
                  height: getVerticalSize(80),
                  width: getVerticalSize(70),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImages.nerds), fit: BoxFit.fill)),
                ),
                SizedBox(
                  width: getHorizontalSize(8),
                ),
                const Text(
                  'Nerds Gummy\nCluster',
                  style: AppTextStyle.subheading,
                ),
                const Spacer(),
                Text(
                  '\$3.37',
                  style: AppTextStyle.subheading
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Padding(
              padding: getPadding(left: getVerticalSize(73)),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.sky, width: 3),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.minimize_sharp,
                            color: AppColors.sky,
                            size: 22,
                          )
                        ],
                      )),
                  SizedBox(
                    width: getHorizontalSize(5),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.lightblue, width: 3),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text('1', style: AppTextStyle.normalText)],
                      )),
                  SizedBox(
                    width: getHorizontalSize(5),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.black, width: 3),
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
            ),
            SizedBox(
              height: getVerticalSize(5),
            ),
            Padding(
              padding: getPadding(left: getHorizontalSize(73)),
              child: Text(
                'Remove',
                style: AppTextStyle.normalText.copyWith(
                    color: AppColors.primary, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: getVerticalSize(30),
            ),
            const Divider(
              color: AppColors.lightblue,
            ),
            SizedBox(height: getVerticalSize(20)),
            Column(
              children: [
                TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Order note',
                      hintStyle:
                          AppTextStyle.hinttext.copyWith(color: AppColors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: AppColors.lightgray)),
                    )),
              ],
            ),
            SizedBox(
              height: getVerticalSize(25),
            ),
            const Text(
              'Tax, delivery fee and discount codes included at checkout.',
              style: AppTextStyle.fieldtitle,
            ),
            const Row(
              children: [
                Spacer(),
                Text(
                  '\$3.37',
                  style: AppTextStyle.fieldtitle,
                ),
              ],
            ),
            SizedBox(
              height: getVerticalSize(10),
            ),
            const Text(
              'Minimum order of \$5 required for checkout',
              style: AppTextStyle.subheading,
            ),
            SizedBox(
              height: getVerticalSize(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                    buttonheight: 55.0,
                    buttonwidth: 120.0,
                    buttonRadius: 100.0,
                    buttoncolor: AppColors.white,
                    textcolor: AppColors.maroon,
                    onTap: () {},
                    bordercolor: AppColors.black,
                    buttonText: 'View Cart'),
                Button(
                    buttonheight: 55.0,
                    buttonwidth: 120.0,
                    buttonRadius: 100.0,
                    buttoncolor: AppColors.primary,
                    textcolor: AppColors.white,
                    onTap: () {},
                    bordercolor: AppColors.black,
                    buttonText: 'Buy Now')
              ],
            )
          ],
                ),
              ),
        ));
  }
}
