import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_shoes/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Varaibles
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(() => const LoginScreen());
    } else {
      currentPageIndex.value += currentPageIndex.value;
      pageController.jumpToPage(currentPageIndex.value + 1);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
