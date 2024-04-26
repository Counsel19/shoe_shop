import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_shoes/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:shop_shoes/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop_shoes/utils/constants/colors.dart';
import 'package:shop_shoes/utils/constants/sizes.dart';
import 'package:shop_shoes/utils/device/device_utility.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const HomeAppBar(),
                  const SizedBox(
                    height: AppSizes.spaceBetweenSections,
                  ),
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.defualtSpace),
                    child: Container(
                      width: AppDeviceUtils.getScreenWidth(context),
                      padding: const EdgeInsets.all(AppSizes.md),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(AppSizes.cardRadiusLg),
                          border: Border.all(color: CustomColors.grey)),
                      child: Row(
                        children: [
                          const Icon(
                            Iconsax.search_normal,
                            color: CustomColors.darkerGrey,
                          ),
                          const SizedBox(
                            width: AppSizes.spaceBetweenItems,
                          ),
                          Text(
                            "Search for Products...",
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                  ),

                  // Categories
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
