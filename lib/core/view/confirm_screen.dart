import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ConfirmScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
    return Scaffold(
      body: Padding(
        padding: getPadding(top: getVerticalSize(35)),
        child: Column(
          children: [
            Container(
              height: getVerticalSize(62),
              width: double.infinity,
              color: AppColors.light,
              child: Padding(
                padding: getPadding(
                    left: getHorizontalSize(21), right: getHorizontalSize(15)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.shopping_cart,
                      color: AppColors.primary,
                      size: 25,
                    ),
                    SizedBox(
                      width: getHorizontalSize(6),
                    ),
                    Text(
                      'Show order summary',
                      style: AppTextStyle.normalText
                          .copyWith(color: AppColors.primary),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.primary,
                    ),
                    const Spacer(),
                    Text(
                      '\$8.05',
                      style: AppTextStyle.normalText
                          .copyWith(color: AppColors.primary, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: getVerticalSize(15)),
            Padding(
              padding: getPadding(
                  left: getHorizontalSize(22), right: getVerticalSize(22)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 33,
                        width: 33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.5),
                          color: AppColors.primary,
                        ),
                        child: const Icon(Icons.check, color: AppColors.white),
                      ),
                      SizedBox(width: getHorizontalSize(8)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order #8902',
                            style: AppTextStyle.normalText
                                .copyWith(color: AppColors.black, fontSize: 12),
                          ),
                          Text(
                            'Thank you, Smith! 😃🌎🛴',
                            style: AppTextStyle.subheading.copyWith(
                                fontWeight: FontWeight.w400, fontSize: 18),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: getVerticalSize(10),
                  ),
                  Container(
                    height: getVerticalSize(256),
                    width: getHorizontalSize(335),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.shady)),
                    child: Image.asset(AppImages.mapImage,fit: BoxFit.cover)
                  ),
                  Container(
                    height: getVerticalSize(110),
                    width: getHorizontalSize(335),
                    decoration:  BoxDecoration(
                      border: Border.all(color: AppColors.shady),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Padding(
                      padding: getPadding(
                          left: getHorizontalSize(6),
                          right: getHorizontalSize(6)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Your order has been picked up',
                                style: AppTextStyle.subheading.copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 16)),
                            SizedBox(
                              height: getVerticalSize(5),
                            ),
                             Text(
                                'Your order was picked up at 4748 university way on Sunday,December 03 2023.',style: AppTextStyle.subheading.copyWith(fontSize:13,fontWeight: FontWeight.w400),)
                          ]),
                    ),
                  ),
                  SizedBox(height: getVerticalSize(20)),
                  Container(
                    height: getVerticalSize(176),
                    width: getHorizontalSize(335),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.light),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: getPadding(
                        left: getHorizontalSize(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order details',
                              style: AppTextStyle.subheading.copyWith(
                                  fontSize: 17, fontWeight: FontWeight.w400)),
                          SizedBox(height: getVerticalSize(15)),
                          Text(
                            'Contact Information',
                            style:
                                AppTextStyle.subheading.copyWith(fontSize: 12),
                          ),
                          SizedBox(
                            height: getVerticalSize(8),
                          ),
                          Text(
                            'lucas@gmail.com',
                            style: AppTextStyle.fieldtitle
                                .copyWith(decoration: TextDecoration.underline),
                          ),
                          SizedBox(height: getVerticalSize(15)),
                          Text(
                            'Payment Method',
                            style:
                                AppTextStyle.subheading.copyWith(fontSize: 12),
                          ),
                          SizedBox(
                            height: getVerticalSize(8),
                          ),
                          Row(
                            children: [
                              Container(
                                height: getVerticalSize(16),
                                width: getHorizontalSize(19),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: AppColors.orange),
                                  image: const DecorationImage(
                                      image: AssetImage(AppImages.payment1),
                                      fit: BoxFit.scaleDown),
                                ),
                              ),
                              SizedBox(width: getHorizontalSize(5)),
                              Text(
                                '-8.05\$',
                                style: AppTextStyle.normalText
                                    .copyWith(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(10),
                  ),
                  Button(
                      buttonheight: 50.0,
                      buttonwidth: 335.0,
                      buttonRadius: 27.0,
                      buttoncolor: AppColors.primary,
                      textcolor: AppColors.white,
                      onTap: (){Get.offNamed(AppRoutes.homeWraper);},
                      bordercolor: Colors.transparent,
                      buttonText: 'Go to Browser')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
