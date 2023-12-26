import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/app/appTextstyle.dart';
import 'package:rev_delivery/utils/size_utils.dart';
import 'package:rev_delivery/components/customBackbutton.dart';

class CustomAppBar extends GetView {
  CustomAppBar({super.key, required this.title, required this.space1, required this.space2});
  String title;
  double space1;
  double space2;
  @override
  Widget build(BuildContext context) {
    final ksize = MediaQuery.of(context).size;
    return Row(
      children: [
        CustomBackButton(),
        SizedBox(
          width: ksize.width < 375
              ? getHorizontalSize(space1)
              : getHorizontalSize(space2),
        ),
        Text(
          title,
          style: AppTextStyle.heading,
        ),
      ],
    );
  }
}
