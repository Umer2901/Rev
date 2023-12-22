import 'package:flutter/material.dart';
import 'package:rev_delivery/app/appColors.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';




class WelcomeScreen extends GetView{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
    );
  }
}