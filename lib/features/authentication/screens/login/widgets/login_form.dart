import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:shop_shoes/features/authentication/screens/password_recovery/forget_password.dart";
import "package:shop_shoes/features/authentication/screens/signup/signup.dart";
import "package:shop_shoes/naviagtion_menu.dart";
import "package:shop_shoes/utils/constants/sizes.dart";
import "package:iconsax/iconsax.dart";

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBetweenSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: "Email",
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwInputFields,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: "Password",
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text("Remeber Login")
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(
                    () => const ForgetPasswordScreen(),
                  ),
                  child: const Text("Forgot Password"),
                )
              ],
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenSections,
            ),

            // Signin Buton
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: const Text("Sign In"),
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenItems,
            ),

            // Create Account Buton
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignUpScreen());
                },
                child: Text(
                  "Create Account",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
