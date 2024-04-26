import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_shoes/common/screens/success_screen/success_screen.dart';
import 'package:shop_shoes/features/authentication/screens/login/login.dart';
import 'package:shop_shoes/utils/constants/image_strings.dart';
import 'package:shop_shoes/utils/constants/sizes.dart';
import 'package:shop_shoes/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(
              CupertinoIcons.clear,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            AppSizes.defualtSpace,
          ),
          child: Column(
            children: [
              // Image
              Image(
                image: const AssetImage(AppImageStrings.verifyEmailImage),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),

              // TItle and subtitl
              Text(
                "Verify your Email Address",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),
              Text(
                "suport@email.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),
              Text(
                "Congratulations on taking the first step toward accessing our platform! To complete your account setup and gain full access to our services, please check your email inbox for a verification message.",
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),

              // Button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: AppImageStrings.successImage,
                      onPressed: () => Get.to(() => const LoginScreen()),
                      title: "Account Creation Successfull ",
                      subtitle:
                          "Congratulations on successfully verifying your email address! Your proactive step ensures smoother communication and enhanced security within our system.",
                    ),
                  ),
                  child: const Text("Continue"),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Resend Email"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
