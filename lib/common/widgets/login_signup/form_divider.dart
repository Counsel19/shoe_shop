import 'package:flutter/material.dart';
import 'package:shop_shoes/utils/helpers/helper_functions.dart';

import "package:shop_shoes/utils/constants/colors.dart";

class FormDivider extends StatelessWidget {
  const FormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDarkMode();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDark ? CustomColors.darkGrey : CustomColors.grey,
            indent: 60,
            endIndent: 5,
            thickness: 0.5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? CustomColors.darkGrey : CustomColors.grey,
            indent: 5,
            endIndent: 60,
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}
