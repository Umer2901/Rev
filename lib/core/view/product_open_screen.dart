import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/constant.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customButton.dart';
import '../controllers/product_open_screen_controller.dart';
import 'package:rev_delivery/components/customproducts.dart';
import 'package:rev_delivery/components/customBackbutton.dart';


class ProductDetail extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProductOpenScreenController(),
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: getPadding(
              top: getVerticalSize(45),
              left: getHorizontalSize(16),
              right: getHorizontalSize(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomBackButton(),
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
                    ),
                  ],
                ),
                SizedBox(height: getVerticalSize(10)),
                Center(
                  child: Container(
                    height: getVerticalSize(152),
                    width: getHorizontalSize(291),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: AppColors.primary),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: getVerticalSize(130),
                            width: getHorizontalSize(100),
                            child: Image.asset(
                              AppImages.nerds,
                              fit: BoxFit.fill,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(15),
                ),
                Text(
                  'Description',
                  style: AppTextStyle.subheading.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: getVerticalSize(6),
                ),
                const Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
                    style: AppTextStyle.smallText),
                SizedBox(
                  height: getVerticalSize(15),
                ),
                Container(
                    height: getVerticalSize(250),
                    width: getHorizontalSize(339),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: AppColors.lightgray),
                    ),
                    child: Padding(
                      padding: getPadding(top: getVerticalSize(15)),
                      child: Column(
                        children: [
                          const Text(
                            'Nerds Gummy Clusters',
                            style: AppTextStyle.subheading,
                          ),
                          SizedBox(
                            height: getVerticalSize(10),
                          ),
                          Text(
                            '\$3.37',
                            style: AppTextStyle.subheading
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: getVerticalSize(10),
                          ),
                          Text(
                            'Tax and delivery fee added at checkout',
                            style: AppTextStyle.subheading.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(height: getVerticalSize(10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: (){controller.decrement();},
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border:
                                          Border.all(color: AppColors.sky, width: 3),
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
                              ),
                              SizedBox(
                                width: getHorizontalSize(5),
                              ),
                              Obx(
                                ()=> Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: AppColors.lightblue, width: 3),
                                    ),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(controller.x.toString(), style: AppTextStyle.normalText)
                                      ],
                                    )),
                              ),
                              SizedBox(
                                width: getHorizontalSize(5),
                              ),
                              InkWell(
                                onTap: (){controller.increment();},
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
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
                              ),
                            ],
                          ),
                          SizedBox(
                            height: getVerticalSize(15),
                          ),
                          Button(
                              buttonheight: 40.0,
                              buttonwidth: 309.0,
                              buttonRadius: 20.0,
                              buttoncolor: AppColors.primary,
                              textcolor: AppColors.white,
                              onTap: () {Get.toNamed(AppRoutes.addtocart);},
                              bordercolor: Colors.transparent,
                              buttonText: 'Add to cart')
                        ],
                      ),
                    )),
                SizedBox(
                  height: getVerticalSize(15),
                ),
                Row(
                  children: [
                    Text(
                      'You may also Like',
                      style: AppTextStyle.subheading.copyWith(fontSize: 16),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.products);
                        },
                        child: Text(
                          'View all',
                          style: AppTextStyle.subheading
                              .copyWith(fontSize: 16, color: AppColors.primary),
                        ))
                  ],
                ),
                SizedBox(
                  height: getVerticalSize(15),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GridView.builder(
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 8.0,
                              mainAxisExtent: 210.0,
                            ),
                            itemCount: 5,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (context,index){
                              return CustomProduct(onTap: productList[index].onTap, image: productList[index].image, name: productList[index].name, price: productList[index].price,);
                            })
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
