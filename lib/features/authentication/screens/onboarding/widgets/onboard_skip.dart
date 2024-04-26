import 'package:flutter/material.dart';
import 'package:shop_shoes/features/authentication/controllers/onboarding_contoller.dart';
import 'package:shop_shoes/utils/device/device_utility.dart';
import 'package:shop_shoes/utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(context),
      right: AppSizes.defualtSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: const Text("Skip"),
      ),
    );
  }
}
