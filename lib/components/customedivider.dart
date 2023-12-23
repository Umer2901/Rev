import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rev_delivery/utils/size_utils.dart';



class CustomDivider extends GetView{
  CustomDivider({super.key, required this.color});
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(6),
      width: getHorizontalSize(116),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      )
    );
  }
}