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

class SearchItems {
  SearchItems(this.image,this.text);
  String image;
  String text;
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

List SearchItemList = [
  SearchItems(AppImages.popular, 'Popular'),
  SearchItems(AppImages.popular, 'Popular'),
  SearchItems(AppImages.popular, 'Popular'),
  SearchItems(AppImages.popular, 'Popular'),
  SearchItems(AppImages.popular, 'Popular'),
  SearchItems(AppImages.popular, 'Popular'),
  SearchItems(AppImages.popular, 'Popular'),
  SearchItems(AppImages.popular, 'Popular'),
  SearchItems(AppImages.popular, 'Popular'),
  SearchItems(AppImages.popular, 'Popular'),
];
List categoryList = ['Category1', 'Category2', 'Category3'];
List storeList = ['UCLA', 'USC', 'UCSB','ASU','UT AUSTIN'];