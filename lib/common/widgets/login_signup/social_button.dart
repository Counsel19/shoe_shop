import "package:flutter/material.dart";
import "package:shop_shoes/utils/constants/image_strings.dart";
import "package:shop_shoes/utils/constants/sizes.dart";

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(AppImageStrings.google),
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(
          width: AppSizes.spaceBetweenItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(AppImageStrings.facebook),
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
