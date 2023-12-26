import 'dart:ui';
import 'package:get/get.dart';
import 'package:rev_delivery/app/appImages.dart';
import 'package:rev_delivery/routes/appRoutes.dart';




class Products{
  Products(this.image, this.name, this.price,this.onTap);
  String image;
  String name;
  String price;
  VoidCallback onTap;
}

List productList = [
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){Get.toNamed(AppRoutes.productDetail);}),
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){}),
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){}),
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){}),
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){}),
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){}),
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){}),
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){}),
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){}),
  Products(AppImages.nerds, 'Nerds Gummy Clusters', '\$3.38',(){}),
];