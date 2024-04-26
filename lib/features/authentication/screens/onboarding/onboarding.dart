import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_shoes/features/authentication/controllers/onboarding_contoller.dart';
import 'package:shop_shoes/features/authentication/screens/onboarding/widgets/onbaord_navigation.dart';
import 'package:shop_shoes/features/authentication/screens/onboarding/widgets/onboard_circle_btn.dart';
import 'package:shop_shoes/utils/constants/image_strings.dart';
import 'package:shop_shoes/utils/constants/text_strings.dart';
import 'package:shop_shoes/features/authentication/screens/onboarding/widgets/onboard_page.dart';
import 'package:shop_shoes/features/authentication/screens/onboarding/widgets/onboard_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardPage(
                image: AppImageStrings.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardPage(
                image: AppImageStrings.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardPage(
                image: AppImageStrings.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardCircleButton()
        ],
      ),
    );
  }
}
