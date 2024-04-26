import 'package:flutter/material.dart';
import 'package:shop_shoes/common/styles/spacing_styles.dart';
import 'package:shop_shoes/utils/constants/sizes.dart';
import 'package:shop_shoes/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onPressed,
  });

  final String image, title, subtitle;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: AppSpacingStyles.paddingWithAppBarHeight * 2,
        child: Column(
          children: [
            // Image
            Image(
              image: AssetImage(image),
              width: AppHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenItems,
            ),

            // TItle and subtitl
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: AppSizes.spaceBetweenItems,
            ),

            Text(
              subtitle,
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
                onPressed: onPressed,
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
