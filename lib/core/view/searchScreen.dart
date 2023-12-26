import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customPopular.dart';
import 'package:rev_delivery/components/customBottombar.dart';

class SearchScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: getPadding(
          top: getVerticalSize(47),
          left: getHorizontalSize(16),
          right: getHorizontalSize(16),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Search',
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
            SizedBox(height: getVerticalSize(15),),
             SearchBar(
              trailing:  const [Icon(Icons.search_outlined,color: AppColors.gray,size: 35,)],
              hintText: 'Search',
              hintStyle: MaterialStatePropertyAll(AppTextStyle.subheading.copyWith(color: AppColors.gray)),
              shadowColor: const MaterialStatePropertyAll(Colors.transparent),
              backgroundColor: const MaterialStatePropertyAll(AppColors.white),
            ),
            SizedBox(height: getVerticalSize(15)),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(left: getHorizontalSize(15),right: getHorizontalSize(15)),
                  child: Column(
                    children: [
                      GridView.builder(
                        physics: const ScrollPhysics(),
                        padding: const EdgeInsets.all(0),
                        itemCount: 12,
                        shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: getVerticalSize(10),
                              mainAxisSpacing: getHorizontalSize(20),
                              ),
                          itemBuilder: (context,index){
                            return Popular();
                          })
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottombar(
          revonTap: () {
            Get.toNamed(AppRoutes.products);
          },
          profileonTap: () {Get.toNamed(AppRoutes.profile);},
          searchonTap: () {
            Get.toNamed(AppRoutes.search);
          }),
    );
  }
}
