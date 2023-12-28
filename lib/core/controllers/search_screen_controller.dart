import 'package:get/get.dart';
import 'package:flutter/material.dart';



class SearchScreenController extends GetxController{
 final currentIndex = 0.obs;
  updatedIndex(index) {
    currentIndex.value = index;
  }
}