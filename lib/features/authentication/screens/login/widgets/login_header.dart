import 'package:flutter/material.dart';

import "package:shop_shoes/utils/constants/image_strings.dart";
import "package:shop_shoes/utils/helpers/helper_functions.dart";

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 100,
          image: AssetImage(
            isDark
                ? AppImageStrings.darkAppLogoIcon
                : AppImageStrings.lightAppLogoIcon,
          ),
        ),
        Text(
          "Welcome Back",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          "Discover Limitless Choices and  Unmatched Convinence",
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
