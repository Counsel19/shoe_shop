import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_shoes/features/authentication/screens/password_recovery/reset_password.dart';
import 'package:shop_shoes/utils/constants/sizes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defualtSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              "Forgot Password!",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenItems,
            ),
            Text(
              "Oops! Forgot your password? No worries, we've got you covered. Just enter your email address below and we'll send you instructions to reset your password.",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenSections * 2,
            ),

            // Text filed
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(
              height: AppSizes.spaceBetweenSections,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(
                  () => const ResetPasswordScreen(),
                ),
                child: const Text("Submit"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
