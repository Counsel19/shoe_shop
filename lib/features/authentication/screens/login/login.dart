import "package:flutter/material.dart";
import "package:shop_shoes/common/styles/spacing_styles.dart";
import "package:shop_shoes/utils/constants/sizes.dart";
import "package:shop_shoes/features/authentication/screens/login/widgets/login_form.dart";
import "package:shop_shoes/common/widgets/login_signup/form_divider.dart";
import "package:shop_shoes/common/widgets/login_signup/social_button.dart";
import "package:shop_shoes/features/authentication/screens/login/widgets/login_header.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(),

              LoginForm(),
              // Divider
              FormDivider(
                dividerText: "Or Sign in with",
              ),

              SizedBox(
                height: AppSizes.spaceBetweenSections,
              ),

              // Footer
              SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
