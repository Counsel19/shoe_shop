import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_shoes/features/authentication/screens/signup/verify_email.dart';
import 'package:shop_shoes/utils/constants/colors.dart';
import 'package:shop_shoes/utils/constants/sizes.dart';
import 'package:shop_shoes/utils/helpers/helper_functions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode();
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: "First Name", prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: AppSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: "Last Name", prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Username", prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Email", prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Phone Number", prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: AppSizes.spaceBetweenSections,
          ),
          // Terms and Conditions CheckBox
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(
                width: AppSizes.spaceBetweenItems,
              ),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: "I agree to ",
                          style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(
                        text: "Privacy Policy ",
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: isDark
                                  ? CustomColors.white
                                  : CustomColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: isDark
                                  ? CustomColors.white
                                  : CustomColors.primary,
                            ),
                      ),
                      TextSpan(
                        text: "and ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text: "Terms of Use ",
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: isDark
                                  ? CustomColors.white
                                  : CustomColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: isDark
                                  ? CustomColors.white
                                  : CustomColors.primary,
                            ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBetweenItems,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text("Create an Account"),
            ),
          ),
        ],
      ),
    );
  }
}
