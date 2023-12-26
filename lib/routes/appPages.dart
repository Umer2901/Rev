import 'package:get/get.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/core/view/otpScreen.dart';
import 'package:rev_delivery/core/view/storeScreen.dart';
import 'package:rev_delivery/core/view/loginScreen.dart';
import 'package:rev_delivery/core/view/searchScreen.dart';
import 'package:rev_delivery/core/view/splashScreen.dart';
import 'package:rev_delivery/core/view/profileScreen.dart';
import 'package:rev_delivery/core/view/produtsScreen.dart';
import 'package:rev_delivery/core/view/welcomeScreen.dart';
import 'package:rev_delivery/core/view/registerScreen.dart';
import 'package:rev_delivery/core/view/contactus_screen.dart';
import 'package:rev_delivery/core/view/add_to_cart_screen.dart';
import 'package:rev_delivery/core/view/product_open_screen.dart';

class AppPages extends AppRoutes{
  static const String initialRoute = AppRoutes.splash;
  static final routes = [
    GetPage(name: AppRoutes.splash, page: ()=> SplashScreen(),),
    GetPage(name: AppRoutes.welcome, page: ()=> WelcomeScreen(),),
    GetPage(name: AppRoutes.register, page: ()=> RegisterScreen(),),
    GetPage(name:AppRoutes.otp, page: ()=> OtpScreen(),),
    GetPage(name: AppRoutes.login, page: ()=> LoginScreen(),),
    GetPage(name: AppRoutes.store, page: ()=> StoreScreen(),),
    GetPage(name: AppRoutes.products, page: ()=> ProductsScreen(),),
    GetPage(name: AppRoutes.search, page: ()=> SearchScreen(),),
    GetPage(name: AppRoutes.profile, page: ()=> ProfileScreen(),),
    GetPage(name: AppRoutes.contactus, page: ()=> ContactUs(),),
    GetPage(name: AppRoutes.productDetail, page: ()=> ProductDetail(),),
    GetPage(name: AppRoutes.addtocart, page: ()=> AddToCart(),),

  ];
}