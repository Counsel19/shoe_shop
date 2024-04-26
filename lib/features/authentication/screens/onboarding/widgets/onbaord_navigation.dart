import 'package:flutter/material.dart';
import 'package:shop_shoes/features/authentication/controllers/onboarding_contoller.dart';
import 'package:shop_shoes/utils/constants/colors.dart';
import 'package:shop_shoes/utils/constants/sizes.dart';
import 'package:shop_shoes/utils/device/device_utility.dart';
import 'package:shop_shoes/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  OnBoardingDotNavigation({
    super.key,
  });

  final controller = OnBoardingController.instance;

  final bool isDark = AppHelperFunctions.isDarkMode();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: AppSizes.defualtSpace,
      bottom: AppDeviceUtils.getButtomNavigationHeight(context) + 25,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: isDark ? CustomColors.light : CustomColors.dark,
            dotHeight: 6),
      ),
    );
  }
}
