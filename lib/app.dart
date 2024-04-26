import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_shoes/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shop_shoes/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.dartTheme,
      home: const OnBoardingScreen(),
    );
  }
}
