import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_shoes/features/authentication/controllers/onboarding_contoller.dart';
import 'package:shop_shoes/utils/constants/colors.dart';
import 'package:shop_shoes/utils/constants/sizes.dart';
import 'package:shop_shoes/utils/device/device_utility.dart';
import 'package:shop_shoes/utils/helpers/helper_functions.dart';

class OnBoardCircleButton extends StatelessWidget {
  OnBoardCircleButton({super.key});

  final isDark = AppHelperFunctions.isDarkMode();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppDeviceUtils.getButtomNavigationHeight(context),
      right: AppSizes.defualtSpace,
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor:
                isDark ? CustomColors.primary : CustomColors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
