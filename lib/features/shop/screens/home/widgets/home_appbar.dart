import 'package:flutter/material.dart';
import 'package:shop_shoes/common/widgets/custom_appbar/custom_appbar.dart';
import 'package:shop_shoes/common/widgets/product_cart/product_card.dart';
import 'package:shop_shoes/utils/constants/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Happy Moments for shopping",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: CustomColors.grey),
          ),
          Text(
            "Okpabi Counsel",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: CustomColors.white),
          ),
        ],
      ),
      actions: const [
        CartCounterIcon(),
      ],
    );
  }
}
