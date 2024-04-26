import 'package:flutter/material.dart';
import 'package:shop_shoes/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:shop_shoes/utils/constants/sizes.dart';
import 'package:shop_shoes/common/widgets/login_signup/form_divider.dart';
import 'package:shop_shoes/common/widgets/login_signup/social_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defualtSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "Do Create an account",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppSizes.spaceBetweenSections,
              ),
              const SignUpForm(),
              const SizedBox(
                height: AppSizes.spaceBetweenSections,
              ),
              const FormDivider(dividerText: "Or Sign Up With"),
              const SizedBox(
                height: AppSizes.spaceBetweenItems,
              ),
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
