import 'package:get/get.dart';
import 'package:rev_delivery/routes/appRoutes.dart';
import 'package:rev_delivery/core/view/otpScreen.dart';
import 'package:rev_delivery/core/view/splashScreen.dart';
import 'package:rev_delivery/core/view/welcomeScreen.dart';
import 'package:rev_delivery/core/view/registerScreen.dart';

class AppPages extends AppRoutes{
  static const String initialRoute = AppRoutes.splash;
  static final routes = [
    GetPage(name: AppRoutes.splash, page: ()=> SplashScreen(),),
    GetPage(name: AppRoutes.welcome, page: ()=> WelcomeScreen(),),
    GetPage(name: AppRoutes.register, page: ()=> RegisterScreen(),),
    GetPage(name:AppRoutes.otp, page: ()=> OtpScreen(),),
  ];
}