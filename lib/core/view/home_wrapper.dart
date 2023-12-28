import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:rev_delivery/core/view/searchScreen.dart';
import 'package:rev_delivery/core/view/profileScreen.dart';
import 'package:rev_delivery/core/view/produtsScreen.dart';
import 'package:rev_delivery/core/controllers/home_wrapper_controller.dart';




class HomeWrapper extends StatelessWidget {
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeWrapController(),
      builder: (controller) {
        return Scaffold(
          body: PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.currentIndex.value = index;
            },
            children: [
              ProductsScreen(),
              SearchScreen(),
              ProfileScreen(),
            ],
          ),
          bottomNavigationBar: Obx(() => BottomNavigationBar(
                enableFeedback: true,
                //unselectedFontSize: 14,
                // showUnselectedLabels: true,
                unselectedItemColor: AppColors.black,
                selectedItemColor: AppColors.primary,
                currentIndex: controller.currentIndex.value,
                onTap: (index) {
                  // Use page controller to animate to the selected page
                  controller.pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  );
                },
                items: [
                  BottomNavigationBarItem(
                    icon: SizedBox(
                          height: 20,
                          width: 44,
                          child: Image.asset(
                            AppImages.logo1,
                            fit: BoxFit.fill,
                          )),
                    label: 'Browser',
                    activeIcon:SizedBox(
                          height: 20,
                          width: 44,
                          child: Image.asset(
                            AppImages.logo1,
                            fit: BoxFit.fill,
                          )), 
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(
                        Icons.search,
                        color: AppColors.black,
                      ),
                    label: 'Search',
                    activeIcon:  Icon(
                        Icons.search,
                        color: AppColors.primary,
                      ),
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(
                        Icons.person_2_outlined,
                        color: AppColors.black,
                      ),
                    label: 'Client',
                    activeIcon: Icon(
                        Icons.person_2_outlined,
                        color: AppColors.primary,
                      ),
                  ),
                ],
              )),
        );
      }
    );
  }
}
